/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package io.swagger.client.model;

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * Replace conditional order response
 **/
@ApiModel(description = "Replace conditional order response")
public class ReplaceConditionalBase {
  
  @SerializedName("ret_code")
  private BigDecimal retCode = null;
  @SerializedName("ret_msg")
  private String retMsg = null;
  @SerializedName("ext_code")
  private String extCode = null;
  @SerializedName("ext_info")
  private String extInfo = null;
  @SerializedName("result")
  private Object result = null;
  @SerializedName("time_now")
  private String timeNow = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getRetCode() {
    return retCode;
  }
  public void setRetCode(BigDecimal retCode) {
    this.retCode = retCode;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getRetMsg() {
    return retMsg;
  }
  public void setRetMsg(String retMsg) {
    this.retMsg = retMsg;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getExtCode() {
    return extCode;
  }
  public void setExtCode(String extCode) {
    this.extCode = extCode;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getExtInfo() {
    return extInfo;
  }
  public void setExtInfo(String extInfo) {
    this.extInfo = extInfo;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Object getResult() {
    return result;
  }
  public void setResult(Object result) {
    this.result = result;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTimeNow() {
    return timeNow;
  }
  public void setTimeNow(String timeNow) {
    this.timeNow = timeNow;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ReplaceConditionalBase replaceConditionalBase = (ReplaceConditionalBase) o;
    return (this.retCode == null ? replaceConditionalBase.retCode == null : this.retCode.equals(replaceConditionalBase.retCode)) &&
        (this.retMsg == null ? replaceConditionalBase.retMsg == null : this.retMsg.equals(replaceConditionalBase.retMsg)) &&
        (this.extCode == null ? replaceConditionalBase.extCode == null : this.extCode.equals(replaceConditionalBase.extCode)) &&
        (this.extInfo == null ? replaceConditionalBase.extInfo == null : this.extInfo.equals(replaceConditionalBase.extInfo)) &&
        (this.result == null ? replaceConditionalBase.result == null : this.result.equals(replaceConditionalBase.result)) &&
        (this.timeNow == null ? replaceConditionalBase.timeNow == null : this.timeNow.equals(replaceConditionalBase.timeNow));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.retCode == null ? 0: this.retCode.hashCode());
    result = 31 * result + (this.retMsg == null ? 0: this.retMsg.hashCode());
    result = 31 * result + (this.extCode == null ? 0: this.extCode.hashCode());
    result = 31 * result + (this.extInfo == null ? 0: this.extInfo.hashCode());
    result = 31 * result + (this.result == null ? 0: this.result.hashCode());
    result = 31 * result + (this.timeNow == null ? 0: this.timeNow.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ReplaceConditionalBase {\n");
    
    sb.append("  retCode: ").append(retCode).append("\n");
    sb.append("  retMsg: ").append(retMsg).append("\n");
    sb.append("  extCode: ").append(extCode).append("\n");
    sb.append("  extInfo: ").append(extInfo).append("\n");
    sb.append("  result: ").append(result).append("\n");
    sb.append("  timeNow: ").append(timeNow).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
