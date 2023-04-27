import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_colors.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      padding: EdgeInsets.symmetric(horizontal: 9.5.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            SizedBox(
              height: 58.h,
              width: 167.w,
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
                    'О компании',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  )),
            ),
            SizedBox(
              width: 16.w,
            ),
            SizedBox(
              height: 58.h,
              width: 167.w,
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
                    'Об органике',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Доставка',
                  style: TextStyle(fontSize: 13.sp, color: greenMainColor),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Оплата',
                  style: TextStyle(fontSize: 13.sp, color: greenMainColor),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Поддержка',
                  style: TextStyle(fontSize: 13.sp, color: greenMainColor),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Сертификаты',
                  style: TextStyle(fontSize: 13.sp, color: greenMainColor),
                )),
          ],
        ),
        
      ]),
    );
  }
}
