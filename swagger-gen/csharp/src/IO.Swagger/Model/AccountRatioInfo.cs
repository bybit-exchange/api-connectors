/* 
 * Bybit API
 *
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// AccountRatioInfo
    /// </summary>
    [DataContract]
    public partial class AccountRatioInfo :  IEquatable<AccountRatioInfo>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AccountRatioInfo" /> class.
        /// </summary>
        /// <param name="buyRatio">buyRatio.</param>
        /// <param name="sellRatio">sellRatio.</param>
        /// <param name="timestamp">timestamp.</param>
        /// <param name="symbol">symbol.</param>
        public AccountRatioInfo(int? buyRatio = default(int?), int? sellRatio = default(int?), int? timestamp = default(int?), string symbol = default(string))
        {
            this.BuyRatio = buyRatio;
            this.SellRatio = sellRatio;
            this.Timestamp = timestamp;
            this.Symbol = symbol;
        }
        
        /// <summary>
        /// Gets or Sets BuyRatio
        /// </summary>
        [DataMember(Name="buy_ratio", EmitDefaultValue=false)]
        public int? BuyRatio { get; set; }

        /// <summary>
        /// Gets or Sets SellRatio
        /// </summary>
        [DataMember(Name="sell_ratio", EmitDefaultValue=false)]
        public int? SellRatio { get; set; }

        /// <summary>
        /// Gets or Sets Timestamp
        /// </summary>
        [DataMember(Name="timestamp", EmitDefaultValue=false)]
        public int? Timestamp { get; set; }

        /// <summary>
        /// Gets or Sets Symbol
        /// </summary>
        [DataMember(Name="symbol", EmitDefaultValue=false)]
        public string Symbol { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class AccountRatioInfo {\n");
            sb.Append("  BuyRatio: ").Append(BuyRatio).Append("\n");
            sb.Append("  SellRatio: ").Append(SellRatio).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Symbol: ").Append(Symbol).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as AccountRatioInfo);
        }

        /// <summary>
        /// Returns true if AccountRatioInfo instances are equal
        /// </summary>
        /// <param name="input">Instance of AccountRatioInfo to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(AccountRatioInfo input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.BuyRatio == input.BuyRatio ||
                    (this.BuyRatio != null &&
                    this.BuyRatio.Equals(input.BuyRatio))
                ) && 
                (
                    this.SellRatio == input.SellRatio ||
                    (this.SellRatio != null &&
                    this.SellRatio.Equals(input.SellRatio))
                ) && 
                (
                    this.Timestamp == input.Timestamp ||
                    (this.Timestamp != null &&
                    this.Timestamp.Equals(input.Timestamp))
                ) && 
                (
                    this.Symbol == input.Symbol ||
                    (this.Symbol != null &&
                    this.Symbol.Equals(input.Symbol))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.BuyRatio != null)
                    hashCode = hashCode * 59 + this.BuyRatio.GetHashCode();
                if (this.SellRatio != null)
                    hashCode = hashCode * 59 + this.SellRatio.GetHashCode();
                if (this.Timestamp != null)
                    hashCode = hashCode * 59 + this.Timestamp.GetHashCode();
                if (this.Symbol != null)
                    hashCode = hashCode * 59 + this.Symbol.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
