class ApiRating {
  final dynamic rate;
  final int count;

  ApiRating({required this.rate, required this.count});
  factory ApiRating.fromJson(Map<String, dynamic> json) {
    return ApiRating(
      rate: json['rate'],
      count: json['count'] as int,
    );
  }
}
