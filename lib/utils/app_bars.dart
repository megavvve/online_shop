import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/utils/navigator_key.dart';

/*AppBar pickAppBar() {
  
  switch () {
    case "Home":
      return appBarHomePage;
    case "Catalog":
      return appBarHomePage;
    case "Find":
      return appBarHomePage;
    case "Cart":
      return appBarCartPage;
    case "Profile":
      return appBarProfilePage;
    default:
      return appBarHomePage;
  }
}*/

AppBar appBarHomePage = AppBar(
  centerTitle: true,
  toolbarHeight: 56.h,
  backgroundColor: Colors.white,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset(
        'assets/icons/main_screen/app_bar_icon.svg',
        height: 24.h,
        width: 15.w,
      ),
      SizedBox(
        width: 8.w,
      ),
      Text(
        'ул. Пушкина 15, д. 20, кв. 113',
        style: TextStyle(color: Colors.black, fontSize: 14.sp),
      ),
    ],
  ),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20.sp),
  )),
);

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
