import 'rating_count_data.dart';

class RatingData {
  RatingCountData? ratingCountData;
  int? ratingAverage;
  int? ratingCount;
  int? reviewCount;

  RatingData({
    this.ratingCountData,
    this.ratingAverage,
    this.ratingCount,
    this.reviewCount,
  });

  factory RatingData.fromJson(Map<String, dynamic> json) => RatingData(
        ratingCountData: json['rating_count_data'] == null
            ? null
            : RatingCountData.fromJson(
                json['rating_count_data'] as Map<String, dynamic>),
        ratingAverage: json['rating_average'] as int?,
        ratingCount: json['rating_count'] as int?,
        reviewCount: json['review_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'rating_count_data': ratingCountData?.toJson(),
        'rating_average': ratingAverage,
        'rating_count': ratingCount,
        'review_count': reviewCount,
      };
}
