import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/utils/navigator_key.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      height: 90.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(17)),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: 58.h,
          width: 343.w,
          child: ElevatedButton(
              onPressed: () {
                navigatorKey.currentState?.pop();
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
                'Сохранить',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              )),
        ),
      ),
    );
  }
}
