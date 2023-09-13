class Data {
  int? verifyId;

  Data({this.verifyId});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        verifyId: json['verify_id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'verify_id': verifyId,
      };
}
