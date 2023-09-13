class Key {
  String? authKey;
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
