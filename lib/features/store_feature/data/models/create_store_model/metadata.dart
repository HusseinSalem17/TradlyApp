class Metadata {
  String? customData;

  Metadata({this.customData});

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        customData: json['custom_data'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'custom_data': customData,
      };
}
