# Domain Age API - Dart/Flutter Client

Domain Age returns when a domain was first registered and how old it is in days, months and years, with a readable age, an age bracket and a newly-registered flag. Paid plans add the expiration date and the last registry update.

[![pub package](https://img.shields.io/pub/v/apiverve_domainage.svg)](https://pub.dev/packages/apiverve_domainage)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Domain Age API](https://apiverve.com/marketplace/domainage?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_domainage: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_domainage/apiverve_domainage.dart';

void main() async {
  final client = DomainageClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'domain': 'myspace.com'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Domain Age API](https://apiverve.com/marketplace/domainage?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/domainage](https://docs.apiverve.com/ref/domainage?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
