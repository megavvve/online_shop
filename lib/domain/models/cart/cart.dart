import 'package:online_shop/domain/models/cart/product_in_cart.dart';

class Cart {
  final int id;
  final int userId;
  final String date;
  final List<ProductInCart> products;

  Cart({required this.id, required this.userId, required this.date, required this.products});
}
