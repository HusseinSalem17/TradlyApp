import 'location.dart';
import 'rating_data.dart';
import 'shipping_charge_spilt.dart';
import 'shipping_method.dart';
import 'user.dart';

class Account {
  int? id;
  List<dynamic>? categoryId;
  String? name;
  String? slug;
  Location? location;
  List<ShippingMethod>? shippingMethods;
  int? commissionPercent;
  String? uniqueName;
  ShippingChargeSpilt? shippingChargeSpilt;
  String? description;
  int? totalFollowers;
  int? totalListings;
  List<dynamic>? images;
  String? type;
  bool? active;
  int? status;
  bool? following;
  User? user;
  List<dynamic>? categories;
  List<dynamic>? attributes;
  RatingData? ratingData;

  Account({
    this.id,
    this.categoryId,
    this.name,
    this.slug,
    this.location,
    this.shippingMethods,
    this.commissionPercent,
    this.uniqueName,
    this.shippingChargeSpilt,
    this.description,
    this.totalFollowers,
    this.totalListings,
    this.images,
    this.type,
    this.active,
    this.status,
    this.following,
    this.user,
    this.categories,
    this.attributes,
    this.ratingData,
  });

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        id: json['id'] as int?,
        categoryId: json['category_id'] as List<dynamic>?,
        name: json['name'] as String?,
        slug: json['slug'] as String?,
        location: json['location'] == null
            ? null
            : Location.fromJson(json['location'] as Map<String, dynamic>),
        shippingMethods: (json['shipping_methods'] as List<dynamic>?)
            ?.map((e) => ShippingMethod.fromJson(e as Map<String, dynamic>))
            .toList(),
        commissionPercent: json['commission_percent'] as int?,
        uniqueName: json['unique_name'] as String?,
        shippingChargeSpilt: json['shipping_charge_spilt'] == null
            ? null
            : ShippingChargeSpilt.fromJson(
                json['shipping_charge_spilt'] as Map<String, dynamic>),
        description: json['description'] as String?,
        totalFollowers: json['total_followers'] as int?,
        totalListings: json['total_listings'] as int?,
        images: json['images'] as List<dynamic>?,
        type: json['type'] as String?,
        active: json['active'] as bool?,
        status: json['status'] as int?,
        following: json['following'] as bool?,
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        categories: json['categories'] as List<dynamic>?,
        attributes: json['attributes'] as List<dynamic>?,
        ratingData: json['rating_data'] == null
            ? null
            : RatingData.fromJson(json['rating_data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'category_id': categoryId,
        'name': name,
        'slug': slug,
        'location': location?.toJson(),
        'shipping_methods': shippingMethods?.map((e) => e.toJson()).toList(),
        'commission_percent': commissionPercent,
        'unique_name': uniqueName,
        'shipping_charge_spilt': shippingChargeSpilt?.toJson(),
        'description': description,
        'total_followers': totalFollowers,
        'total_listings': totalListings,
        'images': images,
        'type': type,
        'active': active,
        'status': status,
        'following': following,
        'user': user?.toJson(),
        'categories': categories,
        'attributes': attributes,
        'rating_data': ratingData?.toJson(),
      };
}
