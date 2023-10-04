import 'data.dart';

class ResponseCreateStoreAccount {
  bool? status;
  Data? data;

  ResponseCreateStoreAccount({this.status, this.data});

  factory ResponseCreateStoreAccount.fromJson(Map<String, dynamic> json) {
    return ResponseCreateStoreAccount(
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
