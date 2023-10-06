class Location {
  String? city;
  String? state;
  String? country;
  String? locality;
  String? postcode;
  String? countryCode;
  String? formattedAddress;

  Location({
    this.city,
    this.state,
    this.country,
    this.locality,
    this.postcode,
    this.countryCode,
    this.formattedAddress,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        city: json['city'] as String?,
        state: json['state'] as String?,
        country: json['country'] as String?,
        locality: json['locality'] as String?,
        postcode: json['postcode'] as String?,
        countryCode: json['country_code'] as String?,
        formattedAddress: json['formatted_address'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'city': city,
        'state': state,
        'country': country,
        'locality': locality,
        'postcode': postcode,
        'country_code': countryCode,
        'formatted_address': formattedAddress,
      };
}
