import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_colors.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      width: 343.w,
      child: TextField(
        maxLines: 5,
        style: TextStyle(
          color: secondaryColor,
          fontSize: 16.sp,
          //fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade300,
          labelText: 'Комментарий',
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
    );
  }
}
