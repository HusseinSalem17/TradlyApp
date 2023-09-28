import 'coordinates.dart';
import 'location.dart';
import 'rating_data.dart';
import 'shipping_method.dart';
import 'user.dart';

class CreateStoreModel {
  int? id;
  String? name;
  Location? location;
  List<ShippingMethod>? shippingMethods;
  String? uniqueName;
  Coordinates? coordinates;
  String? description;
  int? totalFollowers;
  int? totalListings;
  List<String>? images;
  String? type;
  bool? active;
  int? status;
  bool? following;
  User? user;
  RatingData? ratingData;

  CreateStoreModel({
    this.id,
    this.name,
    this.location,
    this.shippingMethods,
    this.uniqueName,
    this.coordinates,
    this.description,
    this.totalFollowers,
    this.totalListings,
    this.images,
    this.type,
    this.active,
    this.status,
    this.following,
    this.user,
    this.ratingData,
  });

  factory CreateStoreModel.fromJson(Map<String, dynamic> json) {
    return CreateStoreModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      shippingMethods: (json['shipping_methods'] as List<dynamic>?)
          ?.map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      uniqueName: json['unique_name'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      description: json['description'] as String?,
      totalFollowers: json['total_followers'] as int?,
      totalListings: json['total_listings'] as int?,
      images: json['images'] as List<String>?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      status: json['status'] as int?,
      following: json['following'] as bool?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      ratingData: json['rating_data'] == null
          ? null
          : RatingData.fromJson(json['rating_data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'location': location?.toJson(),
        'shipping_methods': shippingMethods?.map((e) => e.toJson()).toList(),
        'unique_name': uniqueName,
        'coordinates': coordinates?.toJson(),
        'description': description,
        'total_followers': totalFollowers,
        'total_listings': totalListings,
        'images': images,
        'type': type,
        'active': active,
        'status': status,
        'following': following,
        'user': user?.toJson(),
        'rating_data': ratingData?.toJson(),
      };
}
