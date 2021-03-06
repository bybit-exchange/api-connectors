/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.8.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * LinearSetMarginResult.h
 *
 * 
 */

#ifndef IO_SWAGGER_CLIENT_MODEL_LinearSetMarginResult_H_
#define IO_SWAGGER_CLIENT_MODEL_LinearSetMarginResult_H_


#include "../ModelBase.h"

#include "Object.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  LinearSetMarginResult
    : public ModelBase
{
public:
    LinearSetMarginResult();
    virtual ~LinearSetMarginResult();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// LinearSetMarginResult members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Object> getPositionListResult() const;
    bool positionListResultIsSet() const;
    void unsetPositionListResult();
    void setPositionListResult(std::shared_ptr<Object> value);
    /// <summary>
    /// 
    /// </summary>
    double getAvailableBalance() const;
    bool availableBalanceIsSet() const;
    void unsetAvailable_balance();
    void setAvailableBalance(double value);
    /// <summary>
    /// 
    /// </summary>
    double getWalletBalance() const;
    bool walletBalanceIsSet() const;
    void unsetWallet_balance();
    void setWalletBalance(double value);

protected:
    std::shared_ptr<Object> m_PositionListResult;
    bool m_PositionListResultIsSet;
    double m_Available_balance;
    bool m_Available_balanceIsSet;
    double m_Wallet_balance;
    bool m_Wallet_balanceIsSet;
};

}
}
}
}

#endif /* IO_SWAGGER_CLIENT_MODEL_LinearSetMarginResult_H_ */
