import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonExit extends StatelessWidget {
  const ButtonExit({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/profile/quit_profile.svg',
              color: Colors.grey,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Выйти',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.sp,
              ),
            )
          ],
        ),
        );
  }
}
