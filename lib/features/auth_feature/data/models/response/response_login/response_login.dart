import 'data.dart';

class ResponseLogin {
  bool? status;
  Data? data;

  ResponseLogin({this.status, this.data});

  factory ResponseLogin.fromJson(Map<String, dynamic> json) => ResponseLogin(
        status: json['status'] as bool?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data?.toJson(),
      };
}
