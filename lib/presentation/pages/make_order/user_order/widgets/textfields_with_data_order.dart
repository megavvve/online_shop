import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfieldsWithDataOrder extends StatelessWidget {
  const TextfieldsWithDataOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60.h,
          width: 343.w,
          child: TextField(
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade400,
                size: 30.sp,
              ),
              filled: true,
              fillColor: Colors.grey.shade300,
              labelText: 'Адрес доставки',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.grey.shade300,
                style: BorderStyle.solid,
              ),),
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
          height: 12.h,
        ),
        SizedBox(
          height: 60.h,
          width: 343.w,
          child: TextField(
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade400,
                size: 30.sp,
              ),
              filled: true,
              fillColor: Colors.grey.shade300,
              labelText: 'Дата и время доставки',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.grey.shade300,
                style: BorderStyle.solid,
              ),),
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
          height: 12.h,
        ),
        SizedBox(
          height: 60.h,
          width: 343.w,
          child: TextField(
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade400,
                size: 30.sp,
              ),
              filled: true,
              fillColor: Colors.grey.shade300,
              labelText: 'Способ оплаты',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.grey.shade300,
                style: BorderStyle.solid,
              ),),
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
      ],
    );
  }
}
