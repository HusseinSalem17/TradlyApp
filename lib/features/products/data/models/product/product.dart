import 'listing.dart';

class Product {
  Listing? listing;

  Product({this.listing});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        listing: json['listing'] == null
            ? null
            : Listing.fromJson(json['listing'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'listing': listing?.toJson(),
      };
}
