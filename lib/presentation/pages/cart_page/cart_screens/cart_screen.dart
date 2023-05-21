import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/cart/product_in_cart.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:online_shop/presentation/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/presentation/pages/cart_page/cart_screens/widgets/container_for_cart_bottomnavbar.dart';
import 'package:online_shop/presentation/pages/cart_page/cart_screens/widgets/cart_item.dart';
import 'package:online_shop/presentation/pages/widgets/reccomend_card_item.dart';
import 'package:online_shop/presentation/pages/widgets/total_cart_sum.dart';
import 'package:online_shop/utils/app_bars.dart';

// ignore: must_be_immutable
class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  int deliveryCount = 99;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        List<ProductInCart> prodInCartList = state.cart.products;

        return BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            List<Product> prodList = state.prodList;
            return Scaffold(
              appBar: appBarCartPage,
              bottomNavigationBar: const ContainerForCartBottomNavBar(),
              body: Padding(
                padding: EdgeInsets.only(
                  right: 16.w,
                  left: 14.w,
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    
                    for (ProductInCart productInCart in prodInCartList)
                    for(Product product in prodList)
                    if (product.id==productInCart.id)
                      CartItem(
                        productInCart: productInCart, product: product,
                      ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const RecommendCardItem(),
                    SizedBox(
                      height: 24.sp,
                    ),
                    Divider(
                      height: 1.sp,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const TotalCartSum(),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
