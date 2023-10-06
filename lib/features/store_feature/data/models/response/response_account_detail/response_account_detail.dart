import 'data.dart';

class ResponseAccountDetail {
  bool? status;
  Data? data;

  ResponseAccountDetail({this.status, this.data});

  factory ResponseAccountDetail.fromJson(Map<String, dynamic> json) {
    return ResponseAccountDetail(
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'data': data?.toJson(),
      };
}
