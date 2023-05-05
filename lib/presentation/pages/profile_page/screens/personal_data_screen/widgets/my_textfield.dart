import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_colors.dart';

class MyTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final Icon icon;
  final String textForController;
  const MyTextField(
      {super.key,
      required this.keyboardType,
      required this.labelText,
      required this.icon,
      required this.textForController});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller =
        TextEditingController(text: textForController);
    return SizedBox(
      height: 65.h,
      width: 343.w,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: secondaryColor,
          labelText: labelText,
          labelStyle: TextStyle(
            color: thirdColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,
          ),
          suffixIcon: icon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: secondaryColor,
              style: BorderStyle.solid,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              4.sp,
            ),
            borderSide: BorderSide(
              color: secondaryColor,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
