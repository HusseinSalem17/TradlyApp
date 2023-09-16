import 'package:hive/hive.dart';

import 'data.dart';
//this class will be generated auto (type adapter)
part 'response_login.g.dart';

@HiveType(typeId: 0)
class ResponseLogin extends HiveObject {
  @HiveField(0)
  bool? status;
  @HiveField(1)
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
