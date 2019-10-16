#ifndef _Bybit_H_
#define _Bybit_H_
#include <iostream>
#include <string>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <map>
#include <openssl/sha.h>
#include <openssl/hmac.h>
#include "curl/curl.h"

typedef std::map<std::string, std::string> Params;

struct MemoryStruct {
    char *memory;
    size_t size;
    MemoryStruct()
    {
        memory = (char *)malloc(1);
        size = 0;
    }
    ~MemoryStruct()
    {
        free(memory);
        memory = NULL;
        size = 0;
    }
};

struct Order{
    std::string side;
    std::string symbol;
    std::string order_type;
    int qty;
    double price;
    std::string time_in_force;
    Params param; 
};



size_t WriteMemoryCallback(void *ptr, size_t size, size_t nmemb, void *data);

std::string getToken(Params param, std::string key);

int64_t getCurrentTime(); 

std::string HmacEncode( const char * key, const char * input);

std::string params_string(Params const &params);

std::string post(const std::string &url, const std::string &postParams);

class BybitGateway{

public:

    BybitGateway(std::string, std::string);
    //set account leverage
    std::string OnRspChgLeverage(std::string, int);

    //query account leverage
    std::string OnRspQryLeverage();

    //query account position
    std::string OnRspQryPosition();

    //change contract margin
    std::string OnRspChgPositionMargin(std::string, int);

    //plcae order
    std::string OnOrder(Order);


private:
    
	BybitGateway(const BybitGateway&);
    BybitGateway& operator=(const BybitGateway&);

    std::string _secret;
    std::string _key;
    std::string host;

	static BybitGateway* instance;

    std::string get(std::string);
};

#endif