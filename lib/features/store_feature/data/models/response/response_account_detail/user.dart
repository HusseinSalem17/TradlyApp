class User {
  bool? emailVerified;
  bool? blocked;
  bool? archived;
  String? id;
  String? firstName;
  String? lastName;
  String? profilePic;

  User({
    this.emailVerified,
    this.blocked,
    this.archived,
    this.id,
    this.firstName,
    this.lastName,
    this.profilePic,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        emailVerified: json['email_verified'] as bool?,
        blocked: json['blocked'] as bool?,
        archived: json['archived'] as bool?,
        id: json['id'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        profilePic: json['profile_pic'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'email_verified': emailVerified,
        'blocked': blocked,
        'archived': archived,
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'profile_pic': profilePic,
      };
}
