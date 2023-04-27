import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/bloc/cart_bloc.dart';
import 'package:online_shop/domain/models/product_card.dart';
import 'package:online_shop/presentation/pages/cart_page/cart_screens/widgets/cart_item.dart';
import 'package:online_shop/presentation/pages/widgets/reccomend_card_item.dart';
import 'package:online_shop/presentation/pages/widgets/total_cart_sum.dart';
import 'package:online_shop/utils/app_bars.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  int deliveryCount = 99;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        List<ProductCard> prodList = state.prodCardList;

        return Scaffold(
          appBar: appBarCartPage,
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
                for (ProductCard productCard in prodList)
                  CartItem(
                    productCard: productCard,
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
                TotalCartSum(),
                SizedBox(
                  height: 8.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}