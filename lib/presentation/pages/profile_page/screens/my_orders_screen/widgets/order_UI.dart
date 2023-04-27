import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/utils/app_colors.dart';

class OrderUI extends StatelessWidget {
  const OrderUI({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 75.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(55, 115, 231, 0.1),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/main_screen/app_bar_icon.svg',
                    height: 5,
                    width: 5,
                    fit: BoxFit.scaleDown,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '24 декабря 2021',
                      style: TextStyle(
                        color: const Color(0xFFA0A0A0),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '5 товаров на сумму 1 950 ₽',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.chevron_right,
              color: Color(0xFFCACACA),
            ),
          ],
        ),
      ),
    );
  }
}
