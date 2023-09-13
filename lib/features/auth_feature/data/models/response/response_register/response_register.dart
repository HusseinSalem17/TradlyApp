import 'data.dart';

class ResponseRegister {
  bool? status;
  Data? data;

  ResponseRegister({this.status, this.data});

  factory ResponseRegister.fromJson(Map<String, dynamic> json) =>
      ResponseRegister(
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
