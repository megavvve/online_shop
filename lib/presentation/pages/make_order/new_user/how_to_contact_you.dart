import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/user/user.dart';
import 'package:online_shop/presentation/pages/make_order/user_order/make_order.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/utils/navigator_key.dart';

void howToContactYou(BuildContext context, User user) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    builder: (context) => Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      child: SizedBox(
        height: 301.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.sp),
              child: Container(
                color: Colors.grey.shade300,
                height: 5.h,
                width: 35.w,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Как к вам обращаться?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 51.h,
              width: 343.w,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  //labelText: '',
                  hintText: 'Имя',
                  hintStyle: TextStyle(
                    color: const Color(0xFF8E9096),
                    fontSize: 16.sp,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                  )),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      4.sp,
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              height: 51.h,
              width: 343.w,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: 'Фамилия',
                  hintStyle: TextStyle(
                    color: const Color(0xFF8E9096),
                    fontSize: 16.sp,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                  )),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      4.sp,
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 58.h,
              width: 343.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  navigatorKey.currentState?.push(
                    MaterialPageRoute(
                      builder: (context) => const MakeOrder(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    greenMainColor,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        43.0,
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Продолжить оформление',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
