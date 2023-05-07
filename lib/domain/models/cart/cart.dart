import 'dart:io';

import 'package:online_shop/domain/models/cart/product_in_cart.dart';

class Cart {
  final int id;
  final int userId;
  final String date;
  final List<ProductInCart> products;

  Cart(
      {required this.id,
      required this.userId,
      required this.date,
      required this.products});
  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'] as int,
      userId: json['userId'] as int,
      date: json['price'] as String,
      products: (json['products'] as List<dynamic>)
          .map((dynamic e) => ProductInCart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  static Cart defaultCart = Cart(
    id: 0,
    userId: 0,
    date: '00-00-0000',
    products: const <ProductInCart>[],
  );
  Cart copyWith(
      {int? id, int? userId, String? date, List<ProductInCart>? products}) {
    return Cart(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      products: products ?? this.products,
    );
  }
}
