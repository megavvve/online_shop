import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop/presentation/blocs/cart_bloc/cart_bloc.dart';

import 'package:online_shop/presentation/pages/cart_page/cart_screens/empty_cart_screen.dart';
import 'package:online_shop/presentation/pages/cart_page/cart_screens/cart_screen.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      
      builder: (context, state) {
        if (state.cart.products.isEmpty) {
          return const EmptyCartScreen();
        } else {
         return  CartScreen();
        }
      },
    );
  }
}
