import 'package:hive/hive.dart';

import 'user.dart';
//this class will be generated auto (type adapter) using command in terminal : flutter packages pub run build_runner build
part 'data.g.dart';

@HiveType(typeId: 1)
class Data {
  @HiveField(1)
  User? user;

  Data({this.user});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
      };
}
