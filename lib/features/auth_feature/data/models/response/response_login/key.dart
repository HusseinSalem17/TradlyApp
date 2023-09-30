import 'package:hive/hive.dart';

part 'key.g.dart';

@HiveType(typeId: 3)
class Key {
  @HiveField(0)
  String? authKey;
  @HiveField(1)
  String? refreshKey;

  Key({this.authKey, this.refreshKey});

  factory Key.fromJson(Map<String, dynamic> json) => Key(
        authKey: json['auth_key'] as String?,
        refreshKey: json['refresh_key'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'auth_key': authKey,
        'refresh_key': refreshKey,
      };
}
