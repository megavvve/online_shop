import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_colors.dart';

class GoToOrdering extends StatelessWidget {
  const GoToOrdering({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      height: 134.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(17)),
      child: Column(
        children: [
          SizedBox(
            height: 58.h,
            width: 343.w,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(greenMainColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(43.0),
                    ),
                  ),
                ),
                child: Text(
                  'Оформить заказ',
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                )),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Нажимая “Оформить заказ”, вы принимаете условия',
            style: TextStyle(
              color: const Color(0xFFB8BBC1),
              fontSize: 12.sp,
            ),
          ),
          Text(
            'публичной оферты',
            style: TextStyle(
              color: greenMainColor,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
