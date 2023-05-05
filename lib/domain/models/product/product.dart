import 'dart:convert';

import 'package:online_shop/data/api/repository/products_repository.dart';
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
      //rating:(json['rating'] as Map<String, dynamic>),
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>,),
    );
  }

  
  /*Product copyWithPlus() {
    return Product(
        name: name,
        weight: weight,
        price: price,
        imageUrl: imageUrl,
        inCart: inCart + 1);
  }

  Product copyWithMinus() {
    return Product(
      name: name,
      weight: weight,
      price: price,
      imageUrl: imageUrl,
      inCart: (inCart > 0) ? inCart - 1 : inCart,
    );
  }*/

  /*static List<Product> listProd = [
    Product(
        id: 1,
        title: "Масло сливочное Традиционное",
        price: 329,
        description: '',
        category: 'Молочные продукты',
        imageUrl: "assets/images/product_card/product_card1.png",
        rating:Rating(rate: 120.1, count: 32),),
    Product(
      id: 2,
      title: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      price: 1090,
      description: '',
      category: 'Мясо',
      imageUrl: "assets/images/product_card/beef.png",
      rating:Rating(rate: 120.1, count: 32),
    ),
  ];*/
   //static List<Product>? listProd = ProductsRepository().getProductsList() as List<Product>?;
}
