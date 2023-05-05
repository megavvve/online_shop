import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop/blocs/cart_bloc/cart_bloc.dart';

import 'package:online_shop/presentation/pages/item_card_page/item_card_page.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/utils/navigator_key.dart';

class ProductUI extends StatelessWidget {
  final Product product;

  const ProductUI({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CartBloc>();
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(right: 4.w, left: 8.w,),
          child: Align(
            child: InkWell(
              onTap: () {
                navigatorKey.currentState?.push(
                  MaterialPageRoute(
                    builder: (context) =>  ItemCardPage( product: product,),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0.sp,),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(-6, 10,), // Shadow position
                    ),
                  ],
                ),

                height: 240.h,
                width: 168.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(product.imageUrl,height: 133.h,width: 168.w,),
                    
                    Container(
                      padding: EdgeInsets.only(
                          right: 12.w, bottom: 8.h,left: 12.w, top: 8.h,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              product.title,
                              style: TextStyle(fontSize: 12.sp,fontWeight:FontWeight.w400,),
                              maxLines: 2,
                               overflow: TextOverflow.ellipsis,
                              
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "за 1 шт",
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.grey,),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${product.price.toString()} \$",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp),
                              ),
                              SizedBox(
                                height: 31.h,
                                width: 52.w,
                                child: ElevatedButton(
                                    onPressed: () {
                                      bloc.add(
                                        AddCartProd(
                                          product: product,
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              greenMainColor),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(68.0.sp),
                                        ),
                                      ),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/main_screen/BottomNavBar4.svg',
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
