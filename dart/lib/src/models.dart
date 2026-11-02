/// Response models for the Domain Age API.

/// API Response wrapper.
class DomainageResponse {
  final String status;
  final dynamic error;
  final DomainageData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  DomainageResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory DomainageResponse.fromJson(Map<String, dynamic> json) => DomainageResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DomainageData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Domain Age API.

class DomainageData {
  String? domain;
  String? createdDate;
  num? domainAgeDays;
  num? domainAgeMonths;
  num? domainAgeYears;
  String? domainAgeText;
  String? ageCategory;
  bool? isNewlyRegistered;
  String? expirationDate;
  String? lastUpdatedDate;
  num? daysSinceLastUpdate;

  DomainageData({
    this.domain,
    this.createdDate,
    this.domainAgeDays,
    this.domainAgeMonths,
    this.domainAgeYears,
    this.domainAgeText,
    this.ageCategory,
    this.isNewlyRegistered,
    this.expirationDate,
    this.lastUpdatedDate,
    this.daysSinceLastUpdate,
  });

  factory DomainageData.fromJson(Map<String, dynamic> json) => DomainageData(
      domain: json['domain'],
      createdDate: json['createdDate'],
      domainAgeDays: json['domainAgeDays'],
      domainAgeMonths: json['domainAgeMonths'],
      domainAgeYears: json['domainAgeYears'],
      domainAgeText: json['domainAgeText'],
      ageCategory: json['ageCategory'],
      isNewlyRegistered: json['isNewlyRegistered'],
      expirationDate: json['expirationDate'],
      lastUpdatedDate: json['lastUpdatedDate'],
      daysSinceLastUpdate: json['daysSinceLastUpdate'],
    );
}

class DomainageRequest {
  String domain;

  DomainageRequest({
    required this.domain,
  });

  Map<String, dynamic> toJson() => {
      'domain': domain,
    };
}
