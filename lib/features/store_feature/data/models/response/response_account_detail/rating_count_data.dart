class RatingCountData {
  int? rating1;
  int? rating2;
  int? rating3;
  int? rating4;
  int? rating5;

  RatingCountData({
    this.rating1,
    this.rating2,
    this.rating3,
    this.rating4,
    this.rating5,
  });

  factory RatingCountData.fromJson(Map<String, dynamic> json) {
    return RatingCountData(
      rating1: json['rating_1'] as int?,
      rating2: json['rating_2'] as int?,
      rating3: json['rating_3'] as int?,
      rating4: json['rating_4'] as int?,
      rating5: json['rating_5'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'rating_1': rating1,
        'rating_2': rating2,
        'rating_3': rating3,
        'rating_4': rating4,
        'rating_5': rating5,
      };
}
