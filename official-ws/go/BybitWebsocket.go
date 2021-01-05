package main

import (
	"crypto/hmac"
	"crypto/sha256"
	"encoding/json"
	"fmt"
	"io"
	"reflect"
	"time"
	"unsafe"

	"github.com/gorilla/websocket"
)

func main() {
	// testnet
	wsurl := "wss://stream-testnet.bybit.com/realtime"
	// main site
	// wsurl := "wss://stream.bybit.com/realtime"

	key := ""
	secret := ""

	//generate signature
	expires := fmt.Sprintf("%v", time.Now().Unix()) + "1000"
	h := hmac.New(sha256.New, []byte(secret))
	_val := "GET/realtime" + expires
	io.WriteString(h, _val)
	sign := fmt.Sprintf("%x", h.Sum(nil))

	//connect
	ws, _, err := websocket.DefaultDialer.Dial(wsurl, nil)
	if err != nil {
		fmt.Println("Connect Error!")
		return
	}

	//auth
	args := []string{key, expires, sign}
	param := make(map[string]interface{})
	param["op"] = "auth"
	param["args"] = args
	req, _ := json.Marshal(param)
	err = ws.WriteMessage(websocket.TextMessage, []byte(req))
	if err != nil {
		fmt.Println("Write Websocket Message Error!")
		return
	}

	//subscribe orderBookL2_25
	param = make(map[string]interface{})
	param["op"] = "subscribe"
	args = []string{"orderBookL2_25.BTCUSD"}
	param["args"] = args
	req, _ = json.Marshal(param)
	if err := ws.WriteMessage(websocket.TextMessage, []byte(req)); err != nil {
		fmt.Println("Subscribe Order Book Error!")
		return
	}

	//subscribe position
	param = make(map[string]interface{})
	param["op"] = "subscribe"
	args = []string{"position"}
	param["args"] = args
	req, _ = json.Marshal(param)
	if err := ws.WriteMessage(websocket.TextMessage, []byte(req)); err != nil {
		fmt.Println("Subscribe Position Error!")
		return
	}

	//read message from server
	for true {
		_, msg, err := ws.ReadMessage()
		if err != nil {
			fmt.Println("Read Server Message Error!")
			return
		}
		response := BytesToString(msg)
		fmt.Println("the message is ", response)
	}
}

func BytesToString(b []byte) string {
	bh := (*reflect.SliceHeader)(unsafe.Pointer(&b))
	sh := reflect.StringHeader{bh.Data, bh.Len}
	return *(*string)(unsafe.Pointer(&sh))
}
