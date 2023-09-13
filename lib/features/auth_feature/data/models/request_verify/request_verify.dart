class RequestVerify {
  int? verifyId;
  int? code;

  RequestVerify({this.verifyId, this.code});

  factory RequestVerify.fromJson(Map<String, dynamic> json) {
    return RequestVerify(
      verifyId: json['verify_id'] as int?,
      code: json['code'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'verify_id': verifyId,
        'code': code,
      };
}
