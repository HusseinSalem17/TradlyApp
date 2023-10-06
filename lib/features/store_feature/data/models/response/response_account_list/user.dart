class User {
  bool? emailVerified;
  bool? blocked;
  bool? archived;
  String? id;
  String? firstName;
  String? lastName;
  String? profilePic;
  String? email;
  String? mobile;
  String? dialCode;
  int? createdAt;
  int? updatedAt;

  User({
    this.emailVerified,
    this.blocked,
    this.archived,
    this.id,
    this.firstName,
    this.lastName,
    this.profilePic,
    this.email,
    this.mobile,
    this.dialCode,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        emailVerified: json['email_verified'] as bool?,
        blocked: json['blocked'] as bool?,
        archived: json['archived'] as bool?,
        id: json['id'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        profilePic: json['profile_pic'] as String?,
        email: json['email'] as String?,
        mobile: json['mobile'] as String?,
        dialCode: json['dial_code'] as String?,
        createdAt: json['created_at'] as int?,
        updatedAt: json['updated_at'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'email_verified': emailVerified,
        'blocked': blocked,
        'archived': archived,
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'profile_pic': profilePic,
        'email': email,
        'mobile': mobile,
        'dial_code': dialCode,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
