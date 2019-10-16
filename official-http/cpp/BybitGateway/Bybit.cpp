#include "Bybit.h"

using std::cout;
using std::endl;

BybitGateway::BybitGateway(std::string secret, std::string ckey):host("https://api-testnet.bybit.com"){
    _secret = secret;
    _key = ckey;
}

BybitGateway::BybitGateway(const BybitGateway&){}

BybitGateway& BybitGateway::operator=(const BybitGateway&){};


std::string BybitGateway::OnRspQryLeverage(){
    std::string tm = std::to_string(getCurrentTime());
    Params param{{"api_key", _key}, {"timestamp",tm}};
    std::string url = host + "/user/leverage?";
    param["sign"] = getToken(param, _secret);
    url += params_string(param);
    return get(url);
}

std::string BybitGateway::OnRspChgLeverage(std::string symbol, int leverage){
    std::string tm = std::to_string(getCurrentTime());
    Params param{{"api_key", _key}, {"timestamp",tm}, {"symbol", symbol}, {"leverage", std::to_string(leverage)}};
    std::string url = host + "/user/leverage/save?";
    param["sign"] = getToken(param, _secret);
    return post(url, params_string(param));
}

std::string BybitGateway::OnRspChgPositionMargin(std::string symbol, int margin){
    std::string tm = std::to_string(getCurrentTime());
    Params param{{"api_key", _key}, {"timestamp",tm}, {"symbol", symbol}, {"leverage", std::to_string(margin)}};
    std::string url = host + "/position/change-position-margin?";
    param["sign"] = getToken(param, _secret);
    return post(url, params_string(param));
}

std::string BybitGateway::OnOrder(Order order){
    std::string tm = std::to_string(getCurrentTime());
    Params param{{"api_key", _key}, {"timestamp",tm}, {"side", order.side}, {"symbol", order.symbol},
                {"order_type", order.order_type},{"qty", std::to_string(order.qty)},{"price",std::to_string(order.price)}};
    std::string url = host + "/position/change-position-margin?";
    for(Params::const_iterator it = order.param.begin();it!=order.param.end();++it){
        param[it->first] = it->second;
    }
    param["sign"] = getToken(param, _secret);
    return post(url, params_string(param));
}

std::string BybitGateway::OnRspQryPosition(){
    std::string tm = std::to_string(getCurrentTime());
    Params param{{"api_key", _key}, {"timestamp",tm}};
    std::string url = host + "/position/list?";
    param["sign"] = getToken(param, _secret);
    url += params_string(param);
    return get(url);
}

std::string BybitGateway::get(std::string url){
    cout<<url<<endl;
    CURLcode res = curl_global_init(CURL_GLOBAL_ALL);
    if(CURLE_OK != res)
    {
        cout<<"curl init failed"<<endl;
        exit(-1);
    }

    CURL *pCurl = NULL;
    pCurl = curl_easy_init();

    if( NULL == pCurl)
    {
        cout<<"Init CURL failed..."<<endl;
        exit(-1);
    }
    curl_easy_setopt(pCurl, CURLOPT_TIMEOUT, 30L);
    curl_easy_setopt(pCurl, CURLOPT_CONNECTTIMEOUT, 30L); 
    curl_easy_setopt(pCurl, CURLOPT_FOLLOWLOCATION, 1L);
    curl_easy_setopt(pCurl, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);  
    curl_easy_setopt(pCurl, CURLOPT_SSL_VERIFYPEER, 0L);
    curl_easy_setopt(pCurl, CURLOPT_SSL_VERIFYHOST, 0L);
    MemoryStruct oDataChunk; 
    curl_easy_setopt(pCurl, CURLOPT_WRITEDATA, &oDataChunk);

    curl_easy_setopt(pCurl, CURLOPT_NOSIGNAL, 1L); 
    curl_easy_setopt(pCurl, CURLOPT_URL, url.c_str() ); 

    curl_slist *pList = NULL;
    curl_easy_setopt(pCurl, CURLOPT_HTTPHEADER, pList); 

    res = curl_easy_perform(pCurl); 
    cout<<res<<endl;
    long res_code=0;
    res=curl_easy_getinfo(pCurl, CURLINFO_RESPONSE_CODE, &res_code);
    curl_slist_free_all(pList); 
    curl_easy_cleanup(pCurl);
    curl_global_cleanup();

    return oDataChunk.memory;
}

std::string post(const std::string &url, const std::string &postParams)  
{  
    cout<<url<<endl;
    cout<<postParams<<endl;
    MemoryStruct oDataChunk; 

    CURL *pCurl = curl_easy_init();  

    CURLcode res;  
    if( NULL == pCurl)
    {
        cout<<"Init CURL failed..."<<endl;
        exit(-1);
    }
    // set params  
    curl_easy_setopt(pCurl, CURLOPT_POST, 1); // post req  
    curl_easy_setopt(pCurl, CURLOPT_URL, url.c_str()); // url  
    curl_easy_setopt(pCurl, CURLOPT_POSTFIELDS, postParams.c_str()); 
    curl_easy_setopt(pCurl, CURLOPT_SSL_VERIFYPEER, false); 
    curl_easy_setopt(pCurl, CURLOPT_SSL_VERIFYHOST, false); 
    curl_easy_setopt(pCurl, CURLOPT_READFUNCTION, NULL);  
    curl_easy_setopt(pCurl, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);  
    curl_easy_setopt(pCurl, CURLOPT_WRITEDATA, (void *)&oDataChunk);   
    curl_easy_setopt(pCurl, CURLOPT_CONNECTTIMEOUT, 3);  
    curl_easy_setopt(pCurl, CURLOPT_TIMEOUT, 3);  
    // start req  
    res = curl_easy_perform(pCurl);  

    // release curl  
    curl_easy_cleanup(pCurl);  
    curl_global_cleanup();
    return oDataChunk.memory;
} 


size_t WriteMemoryCallback(void *ptr, size_t size, size_t nmemb, void *data)
{
    size_t realsize = size * nmemb;
    struct MemoryStruct *mem = (struct MemoryStruct *)data;

    mem->memory = (char *)realloc(mem->memory, mem->size + realsize + 1);
    if (mem->memory) 
    {
        memcpy(&(mem->memory[mem->size]), ptr, realsize);
        mem->size += realsize;
        mem->memory[mem->size] = 0;
    }
    return realsize;
}


std::string getToken(Params param, std::string secret){

    std::string input = "";
    for(Params::iterator it=param.begin();it!=param.end();++it){
        input += it->first+"="+it->second+"&";
    }
    // char* p = (char*)malloc(secret.length()*sizeof(char));
    // memcpy(p, secret.c_str(), secret.length());
    return HmacEncode(secret.c_str(), input.substr(0, input.length()-1).c_str());
}

int64_t getCurrentTime()      
{    
    struct timeval tv;    
    gettimeofday(&tv,NULL);   
    // cout<<"tv.tv_sec"<<tv.tv_sec<<endl;
    // return tv.tv_sec * 1000 + tv.tv_usec / 1000;   
    return tv.tv_sec * 1000;    
}  

std::string params_string(Params const &params)
{
    if(params.empty()) return "";
    Params::const_iterator pb= params.cbegin(), pe= params.cend();
    std::string data= pb-> first+ "="+ pb-> second;
    ++ pb; 
    if(pb== pe) return data;
    for(; pb!= pe; ++ pb)
        data+= "&"+ pb-> first+ "="+ pb-> second;
    return data;
}


std::string HmacEncode( const char * key, const char * input) {
        const EVP_MD * engine = NULL;
        engine = EVP_sha256();

        unsigned char *p = (unsigned char*)malloc(1024);
        char buf[1024] = {0};  
        char tmp[3] = {0}; 
        unsigned int output_length = 0;
        p = (unsigned char*)malloc(EVP_MAX_MD_SIZE);
 
        HMAC_CTX ctx;
        HMAC_CTX_init(&ctx);
        HMAC_Init_ex(&ctx, key, strlen(key), engine, NULL);
        HMAC_Update(&ctx, (unsigned char*)input, strlen(input));        // input is OK; &input is WRONG !!!
 
        HMAC_Final(&ctx, p, &output_length);
        HMAC_CTX_cleanup(&ctx);
        for (int i = 0; i<32; i++)  
        {  
            sprintf(tmp, "%02x", p[i]);  
            strcat(buf, tmp);  
        }  
        return std::string(buf);
}