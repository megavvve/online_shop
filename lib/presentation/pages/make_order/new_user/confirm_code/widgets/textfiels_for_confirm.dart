import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldsForConfirm extends StatelessWidget {
  const TextFieldsForConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 54.h,
            width: 51.w,
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
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
            width: 16.w,
          ),
          SizedBox(
            height: 54.h,
            width: 51.w,
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
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
            width: 16.w,
          ),
          SizedBox(
            height: 54.h,
            width: 51.w,
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
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
            width: 16.w,
          ),
          SizedBox(
            height: 54.h,
            width: 51.w,
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
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
        ],
      ),
    );
  }
}
