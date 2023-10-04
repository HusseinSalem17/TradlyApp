class Account {
  int? id;

  Account({this.id});

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
      };
}
