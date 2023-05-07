import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/domain/models/cart/cart.dart';
import 'package:online_shop/domain/models/cart/product_in_cart.dart';
import 'package:online_shop/domain/models/product/product.dart';

class OrderUI extends StatelessWidget {
  final Cart cart;
  const OrderUI({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<ProductBloc, ProductState>(
      
      builder: (context, state) {double sum = 0;
         List<ProductInCart> prodInCartList= cart.products;
        List<Product> productList = state.prodList;
         for (ProductInCart productInCart in prodInCartList)
                    for(Product product in productList)
                    if (product.id==productInCart.id){
                        sum+= product.price.toStringAsFixed(3) as double;
                    }
      
        return InkWell(
          onTap: () {},
          child: SizedBox(
            height: 75.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(55, 115, 231, 0.1),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/main_screen/app_bar_icon.svg',
                        height: 5,
                        width: 5,
                        fit: BoxFit.scaleDown,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cart.date,
                          style: TextStyle(
                            color: const Color(0xFFA0A0A0),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '${cart.products.length} товаров на сумму ${sum}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xFFCACACA),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
