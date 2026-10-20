using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.DomainAge
{
    /// <summary>
    /// Query options for the Domain Age API
    /// </summary>
    public class DomainAgeQueryOptions
    {
        /// <summary>
        /// The domain to check the age of
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }
    }
}
