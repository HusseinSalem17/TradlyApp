import 'attribute.dart';
import 'coordinates.dart';

class Listing {
  int? listPrice;
  String? description;
  int? accountId;
  int? currencyId;
  int? stock;
  String? sku;
  String? barcode;
  List<Attribute>? attributes;
  String? title;
  int? offerPercent;
  List<String>? images;
  List<int>? categoryId;
  Coordinates? coordinates;

  Listing({
    this.listPrice,
    this.description,
    this.accountId,
    this.currencyId,
    this.stock,
    this.sku,
    this.barcode,
    this.attributes,
    this.title,
    this.offerPercent,
    this.images,
    this.categoryId,
    this.coordinates,
  });

  factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        listPrice: json['list_price'] as int?,
        description: json['description'] as String?,
        accountId: json['account_id'] as int?,
        currencyId: json['currency_id'] as int?,
        stock: json['stock'] as int?,
        sku: json['sku'] as String?,
        barcode: json['barcode'] as String?,
        attributes: (json['attributes'] as List<dynamic>?)
            ?.map((e) => Attribute.fromJson(e as Map<String, dynamic>))
            .toList(),
        title: json['title'] as String?,
        offerPercent: json['offer_percent'] as int?,
        images: json['images'] as List<String>?,
        categoryId: json['category_id'] as List<int>?,
        coordinates: json['coordinates'] == null
            ? null
            : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'list_price': listPrice,
        'description': description,
        'account_id': accountId,
        'currency_id': currencyId,
        'stock': stock,
        'sku': sku,
        'barcode': barcode,
        'attributes': attributes?.map((e) => e.toJson()).toList(),
        'title': title,
        'offer_percent': offerPercent,
        'images': images,
        'category_id': categoryId,
        'coordinates': coordinates?.toJson(),
      };
}
