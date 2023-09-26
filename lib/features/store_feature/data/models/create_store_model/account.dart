import 'attribute.dart';
import 'coordinates.dart';
import 'metadata.dart';

class Account {
  int? id;
  String? name;
  String? uniqueName;
  Coordinates? coordinates;
  String? description;
  List<String>? images;
  String? type;
  List<int>? shippingMethods;
  List<Attribute>? attributes;
  Metadata? metadata;

  Account({
    this.id,
    this.name,
    this.uniqueName,
    this.coordinates,
    this.description,
    this.images,
    this.type,
    this.shippingMethods,
    this.attributes,
    this.metadata,
  });

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        id: json['id'] as int?,
        name: json['name'] as String?,
        uniqueName: json['unique_name'] as String?,
        coordinates: json['coordinates'] == null
            ? null
            : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
        description: json['description'] as String?,
        images: json['images'] as List<String>?,
        type: json['type'] as String?,
        shippingMethods: json['shipping_methods'] as List<int>?,
        attributes: (json['attributes'] as List<dynamic>?)
            ?.map((e) => Attribute.fromJson(e as Map<String, dynamic>))
            .toList(),
        metadata: json['metadata'] == null
            ? null
            : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'unique_name': uniqueName,
        'coordinates': coordinates?.toJson(),
        'description': description,
        'images': images,
        'type': type,
        'shipping_methods': shippingMethods,
        'attributes': attributes?.map((e) => e.toJson()).toList(),
        'metadata': metadata?.toJson(),
      };
}
