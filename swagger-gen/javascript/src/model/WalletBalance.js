/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.8
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.BybitApi) {
      root.BybitApi = {};
    }
    root.BybitApi.WalletBalance = factory(root.BybitApi.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The WalletBalance model module.
   * @module model/WalletBalance
   * @version 0.2.10
   */

  /**
   * Constructs a new <code>WalletBalance</code>.
   * Get wallet balance response
   * @alias module:model/WalletBalance
   * @class
   */
  var exports = function() {
    var _this = this;














  };

  /**
   * Constructs a <code>WalletBalance</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/WalletBalance} obj Optional instance to populate.
   * @return {module:model/WalletBalance} The populated <code>WalletBalance</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('equity')) {
        obj['equity'] = ApiClient.convertToType(data['equity'], 'Number');
      }
      if (data.hasOwnProperty('available_balance')) {
        obj['available_balance'] = ApiClient.convertToType(data['available_balance'], 'Number');
      }
      if (data.hasOwnProperty('used_margin')) {
        obj['used_margin'] = ApiClient.convertToType(data['used_margin'], 'Number');
      }
      if (data.hasOwnProperty('order_margin')) {
        obj['order_margin'] = ApiClient.convertToType(data['order_margin'], 'Number');
      }
      if (data.hasOwnProperty('position_margin')) {
        obj['position_margin'] = ApiClient.convertToType(data['position_margin'], 'Number');
      }
      if (data.hasOwnProperty('occ_closing_fee')) {
        obj['occ_closing_fee'] = ApiClient.convertToType(data['occ_closing_fee'], 'Number');
      }
      if (data.hasOwnProperty('occ_funding_fee')) {
        obj['occ_funding_fee'] = ApiClient.convertToType(data['occ_funding_fee'], 'Number');
      }
      if (data.hasOwnProperty('wallet_balance')) {
        obj['wallet_balance'] = ApiClient.convertToType(data['wallet_balance'], 'Number');
      }
      if (data.hasOwnProperty('realised_pnl')) {
        obj['realised_pnl'] = ApiClient.convertToType(data['realised_pnl'], 'Number');
      }
      if (data.hasOwnProperty('unrealised_pnl')) {
        obj['unrealised_pnl'] = ApiClient.convertToType(data['unrealised_pnl'], 'Number');
      }
      if (data.hasOwnProperty('cum_realised_pnl')) {
        obj['cum_realised_pnl'] = ApiClient.convertToType(data['cum_realised_pnl'], 'Number');
      }
      if (data.hasOwnProperty('given_cash')) {
        obj['given_cash'] = ApiClient.convertToType(data['given_cash'], 'Number');
      }
      if (data.hasOwnProperty('service_cash')) {
        obj['service_cash'] = ApiClient.convertToType(data['service_cash'], 'Number');
      }
    }
    return obj;
  }

  /**
   * @member {Number} equity
   */
  exports.prototype['equity'] = undefined;
  /**
   * @member {Number} available_balance
   */
  exports.prototype['available_balance'] = undefined;
  /**
   * @member {Number} used_margin
   */
  exports.prototype['used_margin'] = undefined;
  /**
   * @member {Number} order_margin
   */
  exports.prototype['order_margin'] = undefined;
  /**
   * @member {Number} position_margin
   */
  exports.prototype['position_margin'] = undefined;
  /**
   * @member {Number} occ_closing_fee
   */
  exports.prototype['occ_closing_fee'] = undefined;
  /**
   * @member {Number} occ_funding_fee
   */
  exports.prototype['occ_funding_fee'] = undefined;
  /**
   * @member {Number} wallet_balance
   */
  exports.prototype['wallet_balance'] = undefined;
  /**
   * @member {Number} realised_pnl
   */
  exports.prototype['realised_pnl'] = undefined;
  /**
   * @member {Number} unrealised_pnl
   */
  exports.prototype['unrealised_pnl'] = undefined;
  /**
   * @member {Number} cum_realised_pnl
   */
  exports.prototype['cum_realised_pnl'] = undefined;
  /**
   * @member {Number} given_cash
   */
  exports.prototype['given_cash'] = undefined;
  /**
   * @member {Number} service_cash
   */
  exports.prototype['service_cash'] = undefined;



  return exports;
}));


