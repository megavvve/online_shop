import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop/blocs/cart_bloc/cart_bloc.dart';
import 'package:online_shop/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/domain/models/cart/product_in_cart.dart';
import 'package:online_shop/domain/models/product/product.dart';

class MergeProductAndProductInCart {
  late int id;
  late String title;
  late num price;
  late String category;
  late String imageUrl;
  late int quantity;
  /*final Product product;
  final ProductInCart productInCart;*/

  MergeProductAndProductInCart(Product product, ProductInCart productInCart) {
    id = product.id;
    title = product.title;
    price = product.price;
    category = product.category;
    imageUrl = product.imageUrl;
    quantity = productInCart.quantity;
  }
  
}
