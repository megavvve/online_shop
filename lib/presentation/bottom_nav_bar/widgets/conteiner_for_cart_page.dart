import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/user.dart';
import 'package:online_shop/presentation/pages/make_order/new_user/phone_regestration.dart';
import 'package:online_shop/utils/app_colors.dart';

class ConteinerForCartPage extends StatelessWidget {
  const ConteinerForCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      height: 178.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(17)),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: 58.h,
          width: 343.w,
          child: ElevatedButton(
              onPressed: () {
                PhoneRegistration(
                  context,
                  User.user1,
                  );
              },
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
                'Перейти к оформлению',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              )),
        ),
      ),
    );
  }
}
