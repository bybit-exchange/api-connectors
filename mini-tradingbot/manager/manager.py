from gateway import BybitGateway

class LocalOrderManager:
    """
    Management tool to support use local order id for trading.
    """

    def __init__(self, gateway: BybitGateway, order_prefix: str = ""):
        """"""
        self.gateway = gateway

        # For generating local orderid
        self.order_prefix = order_prefix
        self.order_count = 0
        self.orders = {}        # local_orderid:order

        # Map between local and system orderid
        self.local_sys_orderid_map = {}
        self.sys_local_orderid_map = {}

        # Push order data buf
        self.push_data_buf = {}  # sys_orderid:data

        # Callback for processing push order data
        self.push_data_callback = None

        # Cancel request buf
        self.cancel_request_buf = {}    # local_orderid:req

        # Hook cancel order function
        self._cancel_order = gateway.cancel_order
        gateway.cancel_order = self.cancel_order

    def new_local_orderid(self):
        """
        Generate a new local orderid.
        """
        self.order_count += 1
        local_orderid = self.order_prefix + str(self.order_count).rjust(8, "0")
        return local_orderid

    def get_local_orderid(self, sys_orderid: str):
        """
        Get local orderid with sys orderid.
        """
        local_orderid = self.sys_local_orderid_map.get(sys_orderid, "")

        if not local_orderid:
            local_orderid = self.new_local_orderid()
            self.update_orderid_map(local_orderid, sys_orderid)

        return local_orderid

    def get_sys_orderid(self, local_orderid: str):
        """
        Get sys orderid with local orderid.
        """
        sys_orderid = self.local_sys_orderid_map.get(local_orderid, "")
        return sys_orderid

    def update_orderid_map(self, local_orderid: str, sys_orderid: str):
        """
        Update orderid map.
        """
        self.sys_local_orderid_map[sys_orderid] = local_orderid
        self.local_sys_orderid_map[local_orderid] = sys_orderid

        self.check_cancel_request(local_orderid)
        self.check_push_data(sys_orderid)

    def check_push_data(self, sys_orderid: str):
        """
        Check if any order push data waiting.
        """
        if sys_orderid not in self.push_data_buf:
            return

        data = self.push_data_buf.pop(sys_orderid)
        if self.push_data_callback:
            self.push_data_callback(data)

    def add_push_data(self, sys_orderid: str, data: dict):
        """
        Add push data into buf.
        """
        self.push_data_buf[sys_orderid] = data

    def get_order_with_sys_orderid(self, sys_orderid: str):
        """"""
        local_orderid = self.sys_local_orderid_map.get(sys_orderid, None)
        if not local_orderid:
            return None
        else:
            return self.get_order_with_local_orderid(local_orderid)

    def get_order_with_local_orderid(self, local_orderid: str):
        """"""
        order = self.orders[local_orderid]
        return copy(order)

    def on_order(self, order: OrderData):
        """
        Keep an order buf before pushing it to gateway.
        """
        self.orders[order.orderid] = copy(order)
        self.gateway.on_order(order)

    def cancel_order(self, req: CancelRequest):
        """
        """
        sys_orderid = self.get_sys_orderid(req.orderid)
        if not sys_orderid:
            self.cancel_request_buf[req.orderid] = req
            return

        self._cancel_order(req)

    def check_cancel_request(self, local_orderid: str):
        """
        """
        if local_orderid not in self.cancel_request_buf:
            return

        req = self.cancel_request_buf.pop(local_orderid)
        self.gateway.cancel_order(req)