class Attribute {
  List<String>? values;
  int? id;

  Attribute({this.values, this.id});

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        values: json['values'] as List<String>?,
        id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'values': values,
        'id': id,
      };
}
