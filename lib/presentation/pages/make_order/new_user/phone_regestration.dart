import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/user/user.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/utils/app_texts.dart';

import 'confirm_code/сonfirmation_code.dart';

void phoneRegistration(BuildContext context, User user) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
            padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
            child: SizedBox(
              height: 455.h,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.sp),
                    child: Container(
                      color: Colors.grey.shade300,
                      height: 5.h,
                      width: 35.w,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Номер телефона',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    child: Text(
                      'Для продолжения оформления заказа, укажите номер телефона',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    height: 60.h,
                    width: 343.w,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        //labelText: '',
                        hintText: user.phone,
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
                    height: 24.h,
                  ),
                  SizedBox(
                    height: 58.h,
                    width: 343.w,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          confirmationCode(
                            context,
                            user,
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(greenMainColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(43.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Получить код',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp),
                        )),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    textForPhoneReg,
                    style:
                        TextStyle(color: Colors.grey.shade400, fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    height: 58.h,
                    width: 343.w,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(43.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Войти через Apple',
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp),
                        )),
                  ),
                ],
              ),
            ),
          ));
}
