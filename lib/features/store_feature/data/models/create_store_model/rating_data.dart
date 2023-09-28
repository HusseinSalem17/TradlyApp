class RatingData {
  int? ratingAverage;

  RatingData({this.ratingAverage});

  factory RatingData.fromJson(Map<String, dynamic> json) => RatingData(
        ratingAverage: json['rating_average'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'rating_average': ratingAverage,
      };
}
