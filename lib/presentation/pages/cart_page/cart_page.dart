import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop/blocs/bloc/cart_bloc.dart';
import 'package:online_shop/utils/app_bars.dart';
import 'package:online_shop/presentation/bottom_nav_bar/my_bottomNavigationBar.dart';
import 'package:online_shop/presentation/pages/cart_page/cart_screens/empty_cart_screen.dart';
import 'package:online_shop/presentation/pages/cart_page/cart_screens/cart_screen.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    //return const Center(child: EmptyCartScreen());
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state.prodCardList.isEmpty) {
          return const EmptyCartScreen();
        } else {
         return  CartScreen();
        }
      },
    );
  }
}
