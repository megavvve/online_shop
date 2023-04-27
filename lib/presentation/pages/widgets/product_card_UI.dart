import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop/blocs/bloc/cart_bloc.dart';
import 'package:online_shop/presentation/pages/item_card_page/item_card_page.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/domain/models/product_card.dart';
import 'package:online_shop/utils/navigator_key.dart';

class ProductCardUI extends StatelessWidget {
  final ProductCard productCard;

  const ProductCardUI({
    super.key,
    required this.productCard,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CartBloc>();
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(right: 4.w, left: 8.w),
          child: Align(
            child: InkWell(
              onTap: () {
                navigatorKey.currentState?.push(
                  MaterialPageRoute(
                    builder: (context) => ItemCardPage(),
                  ),
                );
              },
              child: Container(
                //color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0.sp),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(-6, 10), // Shadow position
                    ),
                  ],
                ),

                height: 240.h,
                width: 168.w,
                child: Column(
                  children: [
                    Image(image: AssetImage(productCard.imageUrl)),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: 12.w, left: 12.w, bottom: 12.h, top: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productCard.name,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "за ${productCard.weight} ₽ ",
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${productCard.price.toString()} ₽",
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
                                          productCard: productCard,
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
