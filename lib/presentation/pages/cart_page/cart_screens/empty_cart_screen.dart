import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_bars.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/utils/navigator_key.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCartPage,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "В корзине пока что пусто",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              "Добавленные товары будут отображаться здесь",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 36.h,
            ),
            SizedBox(
              width: 247.w,
              height: 47.h,
              child: ElevatedButton(
                onPressed: () {
                  navigatorKey.currentState?.pushReplacementNamed("Home",);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(greenMainColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(43.0.sp),
                    ),
                  ),
                ),
                child: Text(
                  'Отправиться за покупками',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
