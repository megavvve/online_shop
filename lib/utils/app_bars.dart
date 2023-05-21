import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/presentation/blocs/user_bloc/bloc/user_bloc.dart';

import '../domain/models/user/address/address.dart';
import 'app_assets.dart';

AppBar mainAppBar() {


  return AppBar(
    centerTitle: true,
    toolbarHeight: 56.h,
    backgroundColor: Colors.white,
    title: BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final Address address = state.user.address;
        return Row(
   
          children: [
            SvgPicture.asset(
              appBarIcon,
              height: 24.h,
              width: 15.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'street ${address.street} ${address.number}, ${address.city}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
              ),
            ),
          ],
        );
      },
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(
          20.sp,
        ),
      ),
    ),
  );

}

AppBar appBarCartPage = AppBar(
  toolbarHeight: 56.h,
  centerTitle: true,
  backgroundColor: Colors.white,
  title: Text(
    "Корзина",
    style: TextStyle(
      fontSize: 16.h,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  ),
  actions: [
    IconButton(
      icon: const Icon(
        Icons.delete_outline,
        color: Color(0xFFC0C0CA),
      ),
      onPressed: () {},
    ),
    SizedBox(
      width: 19.w,
    )
  ],
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20.sp),
  )),
);
AppBar appBarProfilePage = AppBar(
  toolbarHeight: 56.h,
  centerTitle: true,
  backgroundColor: Colors.white,
  title: Text(
    "Профиль",
    style: TextStyle(
      fontSize: 16.h,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  ),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20.sp),
  )),
);

AppBar appBarMakeOrder = AppBar(
  foregroundColor: const Color(0xFFC0C0CA),
  centerTitle: true,
  toolbarHeight: 56.h,
  backgroundColor: Colors.white,
  title: Text(
    "Оформление заказа",
    style: TextStyle(
      fontSize: 16.h,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  ),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20.sp),
  )),
);

AppBar appBarSubcategories = AppBar(
  foregroundColor: const Color(0xFFC0C0CA),
  centerTitle: true,
  toolbarHeight: 56.h,
  backgroundColor: Colors.white,
  title: Text(
    "Категория",
    style: TextStyle(
      fontSize: 16.h,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  ),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20.sp),
  )),
);
AppBar appBarPersonalData = AppBar(
  foregroundColor: const Color(0xFFC0C0CA),
  centerTitle: true,
  toolbarHeight: 56.h,
  backgroundColor: Colors.white,
  title: Text(
    "Личные данные",
    style: TextStyle(
      fontSize: 16.h,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  ),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20.sp),
  )),
);
AppBar appBarMyOrders = AppBar(
  foregroundColor: const Color(0xFFC0C0CA),
  centerTitle: true,
  toolbarHeight: 56.h,
  backgroundColor: Colors.white,
  title: Text(
    "Мои заказы",
    style: TextStyle(
      fontSize: 16.h,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  ),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20.sp),
  )),
);
AppBar appBarItemCard = AppBar(
  foregroundColor: Colors.grey,
  centerTitle: true,
  title: Text(
    "Говядина",
    style: TextStyle(
        fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.black),
  ),
  actions: [
    SvgPicture.asset(
      'assets/icons/card_item_screen/upload_app_bar.svg',
    ),
    SizedBox(
      width: 17.w,
    ),
    Icon(
      Icons.favorite_outline,
      color: Colors.grey.shade400,
    ),
    SizedBox(
      width: 10.w,
    )
  ],
  toolbarHeight: 56.h,
  backgroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(20.sp),
    ),
  ),
);
