#include <iostream>
#include <sstream>
#include "BybitGateway/Bybit.h"
#include <openssl/sha.h>
#include <openssl/hmac.h>
using std::cout;
using std::endl;


int main(){
    BybitGateway client("", "");
    cout<<client.OnRspChgPositionMargin("BTCUSD", 2)<<endl;
    cout<<client.OnRspQryPosition()<<endl;
    cout<<client.OnRspQryLeverage()<<endl;
    cout<<client.OnRspChgLeverage("BTCUSD", 20)<<endl;
    Order order;
    order.order_type = "Limit";
    order.price = 10400.5;
    order.qty = 1;
    order.side = "Buy";
    order.symbol = "BTCUSD";
    order.time_in_force = "GoodTillCancel";
    cout<<client.OnOrder(order)<<endl;

    return 0;
}