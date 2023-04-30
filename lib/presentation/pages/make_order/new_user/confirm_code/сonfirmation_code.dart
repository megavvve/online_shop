import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/user/user.dart';
import 'package:online_shop/presentation/pages/make_order/new_user/confirm_code/widgets/textfiels_for_confirm.dart';
import 'package:online_shop/utils/app_colors.dart';

import '../how_to_contact_you.dart';

void ConfirmationCode(BuildContext context, User user) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        top: 14.h,
        left: 16.w,
        right: 16.w,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SizedBox(
        height: 263.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              'Код подтверждения',
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
                'Введите код, который пришел на номер ${user.phone}',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            const TextFieldsForConfirm(),
            SizedBox(
              height: 24.h,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                HowToContactYou(
                  context,
                  user,
                );
              },
              child: Text(
                'Выслать код повторно',
                style: TextStyle(
                  color: greenMainColor,
                  fontSize: 16.sp,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
