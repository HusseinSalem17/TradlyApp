class ShippingMethod {
  int? id;
  String? name;
  String? logoPath;
  String? type;
  bool? shippingMethodDefault;
  bool? active;
  int? orderBy;

  ShippingMethod({
    this.id,
    this.name,
    this.logoPath,
    this.type,
    this.shippingMethodDefault,
    this.active,
    this.orderBy,
  });

  factory ShippingMethod.fromJson(Map<String, dynamic> json) {
    return ShippingMethod(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logoPath: json['logo_path'] as String?,
      type: json['type'] as String?,
      shippingMethodDefault: json['default'] as bool?,
      active: json['active'] as bool?,
      orderBy: json['order_by'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo_path': logoPath,
        'type': type,
        'default': shippingMethodDefault,
        'active': active,
        'order_by': orderBy,
      };
}
