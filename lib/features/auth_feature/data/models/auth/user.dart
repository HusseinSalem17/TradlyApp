import 'package:hive/hive.dart';

class User extends HiveObject {
  String uuid;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? dialCode;
  String? type;

  User({
    required this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.dialCode,
    this.password,
    this.type,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        uuid: json['uuid'] as String,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        email: json['email'] as String?,
        dialCode: json['dialCode'] as String?,
        password: json['password'] as String?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'dialCode': dialCode,
        'password': password,
        'type': type,
      };
}
