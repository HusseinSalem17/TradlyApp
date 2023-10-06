import 'data.dart';

class ResponseAccountList {
  bool? status;
  Data? data;

  ResponseAccountList({this.status, this.data});

  factory ResponseAccountList.fromJson(Map<String, dynamic> json) {
    return ResponseAccountList(
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
