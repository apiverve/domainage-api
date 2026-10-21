# Domain Age API - Ruby Gem

Domain Age returns when a domain was first registered and how old it is in days, months and years, with a readable age, an age bracket and a newly-registered flag. Paid plans add the expiration date and the last registry update.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_domainage'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_domainage
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_domainage'

# Initialize the client
client = APIVerve::Domainage::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ domain: "myspace.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "myspace.com" })
  puts response["data"]
rescue APIVerve::Domainage::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Domainage::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Domainage::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "myspace.com",
    "createdDate": "1996-02-22T05:00:00Z",
    "domainAgeDays": 11193,
    "domainAgeMonths": 367,
    "domainAgeYears": 30.6,
    "domainAgeText": "30 years, 7 months",
    "ageCategory": "veteran",
    "isNewlyRegistered": false,
    "expirationDate": "2029-02-23T05:00:00Z",
    "lastUpdatedDate": "2023-01-17T00:16:21Z",
    "daysSinceLastUpdate": 1367
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/domainage?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/domainage?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/domainage?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
