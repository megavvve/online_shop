import 'package:online_shop/domain/models/product/rating.dart';

class Product {
  final int id;
  final String title;
  final num price;
  final String category;
  final String description;
  final String imageUrl;
  final Rating rating;
  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
  });
   Product copyWith({
    int? id,
    String? title,
    num? price,
    String? category,
    String? description,
    String? imageUrl,
    Rating? rating,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      category: category ?? this.category,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      rating: rating ?? this.rating,
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'],
      category: json['category'] as String,
      description: json['description'] as String,
      imageUrl: json['image'] as String,
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>,),
    );
  }

}
