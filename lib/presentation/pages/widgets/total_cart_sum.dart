import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/bloc/cart_bloc.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/utils/app_texts.dart';

class TotalCartSum extends StatelessWidget {
   TotalCartSum({super.key});
  int deliveryCount = 99;
  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        List<Product> prodList = state.prodList;
    double sumProdList = prodList
        .map(
          (item) => item.price,
        )
        .reduce(
          (value, current) => value + current,
        ) as double;
    int prodListLength = prodList.length;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CountListCart(
                  prodListLength,
                ),
                Text(
                  "$sumProdList \$",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Доставка",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.sp,
                  ),
                ),
                Text(
                  "${deliveryCount} ₽",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Итого',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${sumProdList + deliveryCount} ₽',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
