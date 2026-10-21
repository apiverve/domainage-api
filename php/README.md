# Domain Age API - PHP Package

Domain Age returns when a domain was first registered and how old it is in days, months and years, with a readable age, an age bracket and a newly-registered flag. Paid plans add the expiration date and the last registry update.

## Installation

Install via Composer:

```bash
composer require apiverve/domainage
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Domainage\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['domain' => 'myspace.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Domainage\Client;
use APIVerve\Domainage\Exceptions\APIException;
use APIVerve\Domainage\Exceptions\ValidationException;

try {
    $response = $client->execute(['domain' => 'myspace.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/domainage?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/domainage?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/domainage?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
