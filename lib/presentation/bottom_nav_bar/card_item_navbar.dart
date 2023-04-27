import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/blocs/bloc/cart_bloc.dart';
import 'package:online_shop/domain/models/product_card.dart';
import 'package:online_shop/presentation/bottom_nav_bar/my_bottomNavigationBar.dart';
import 'package:online_shop/utils/app_colors.dart';

class ProductCardBottomNavBar extends StatelessWidget {
  final int selectedTab;
  final ProductCard productCard;
  final Function(int) onSelectedTab;
  const ProductCardBottomNavBar(
      {super.key,
      required this.selectedTab,
      required this.onSelectedTab,
      required this.productCard});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final bloc = context.read<CartBloc>();

        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding: EdgeInsets.all(16.sp),
              height: 160.h,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(17)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "${productCard.price} ₽",
                        style: TextStyle(
                          fontSize: 28.sp,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        '/ кг',
                        style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 48.h,
                    width: 150.w,
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
                              MaterialStateProperty.all<Color>(greenMainColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(43.0),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/main_screen/BottomNavBar4.svg',
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'В корзину',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.sp),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            /*MyBottomNavigationBar(
              selectedTab: selectedTab,
              onSelectedTab: onSelectedTab,
            ),*/
          ],
        );
      },
    );
  }
}
