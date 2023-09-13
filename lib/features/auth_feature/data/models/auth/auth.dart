import 'user.dart';

class Auth {
  User? user;

  Auth({this.user});

  factory Auth.fromJson(Map<String, dynamic> json) => Auth(
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
      };
}
