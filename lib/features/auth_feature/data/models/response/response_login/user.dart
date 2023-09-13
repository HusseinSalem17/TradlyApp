import 'key.dart';

class User {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? profilePic;
  bool? emailVerified;
  Key? key;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.profilePic,
    this.emailVerified,
    this.key,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        email: json['email'] as String?,
        profilePic: json['profile_pic'] as String?,
        emailVerified: json['email_verified'] as bool?,
        key: json['key'] == null
            ? null
            : Key.fromJson(json['key'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'profile_pic': profilePic,
        'email_verified': emailVerified,
        'key': key?.toJson(),
      };
}
