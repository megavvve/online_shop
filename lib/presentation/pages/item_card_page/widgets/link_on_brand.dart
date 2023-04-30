import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/utils/app_colors.dart';

class LinkOnBrand extends StatelessWidget {
  
  const LinkOnBrand({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      color: const Color(0xffF2F3F0),
      padding: EdgeInsets.only(
        left: 11.w,
        right: 20.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Бренд «Углече Поле»',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right,
                color: const Color(0xffC0C0CA),
                size: 30.sp,
              ))
        ],
      ),
    );
  }
}
