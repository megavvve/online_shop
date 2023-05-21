import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/cart/product_in_cart.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:online_shop/presentation/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/utils/app_texts.dart';
import 'package:online_shop/utils/app_values.dart';

class TotalCartSum extends StatelessWidget {
  const TotalCartSum({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        List<ProductInCart> productInCartList = state.cart.products;
        return BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
          List<Product> prodList = state.prodList;

          final prodListNew = [];
          for (ProductInCart productInCart in productInCartList)
            // ignore: curly_braces_in_flow_control_structures
            for (Product product in prodList) {
              if (product.id == productInCart.id) {
                for (int i = 0; i < productInCart.quantity; i++) {
                  prodListNew.add(product);
                }
              }
            }
            double sumProdList = 0;
          if (prodListNew.isNotEmpty) {
             sumProdList = double.parse((prodListNew
                    .map(
                      (item) => item.price,
                    )
                    .reduce(
                      (value, current) => value + current,
                    ) as double)
                .toStringAsFixed(3));
          } 

          int prodListLength = prodListNew.length;
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  countListCart(
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
                    "$deliveryCount \$",
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
                    '${sumProdList + deliveryCount} \$',
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
        });
      },
    );
  }
}
