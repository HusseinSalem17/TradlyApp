import 'coordinates.dart';
import 'location.dart';
import 'rating_data.dart';
import 'shipping_method.dart';
import 'user.dart';

class Account {
  int? id; // id
  String? name; // name
  Location? location; // address,city
  List<ShippingMethod>? shippingMethods;
  String? uniqueName; // store web address
  Coordinates? coordinates;
  String? description; // store description
  int? totalFollowers;
  int? totalListings;
  List<String>? images;
  String? type; // store type
  bool? active;
  int? status;
  bool? following;
  User? user;
  RatingData? ratingData;

  Account({
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

  factory Account.fromJson(Map<String, dynamic> json) => Account(
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

  Map<String, dynamic> toJson() => {
        'id': id ,
        'name': name ,
        'location': location?.toJson() ?? {},
        // 'shipping_methods':
        //     shippingMethods?.map((e) => e.toJson()).toList() ?? [],
        'unique_name': uniqueName ,
        //'coordinates': coordinates?.toJson() ?? {},
        'description': description ?? '',
        //'total_followers': totalFollowers ?? 0,
        //'total_listings': totalListings ?? 0,
        //'images': images ?? [],
        'type': type ,
        'active': active ?? false,
        //'status': status ?? 0,
        //'following': following ?? false,
        //'user': user?.toJson() ?? {},
        //'rating_data': ratingData?.toJson() ?? {},
      };
}
