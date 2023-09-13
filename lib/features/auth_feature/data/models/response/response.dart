import 'data.dart';

class ResponseRequest {
  bool? status;
  Data? data;

  ResponseRequest({this.status, this.data});

  factory ResponseRequest.fromJson(Map<String, dynamic> json) =>
      ResponseRequest(
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
