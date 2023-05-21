import 'package:online_shop/data/api/models/api_rating.dart';

class ApiProduct {
  final int id;
  final String title;
  final dynamic price;
  final String category;
  final String description;
  final String imageUrl;
  final ApiRating rating;
  ApiProduct({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
  });
  factory ApiProduct.fromJson(Map<String, dynamic> json) {
    return ApiProduct(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'],
      category: json['category'] as String,
      description: json['description'] as String,
      imageUrl: json['image'] as String,
      rating: (ApiRating.fromJson(json['rating'] as Map<String, dynamic>)),
    );
  }
}
