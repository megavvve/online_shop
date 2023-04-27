import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/user.dart';
import 'package:online_shop/utils/app_colors.dart';

class BonusPoints extends StatelessWidget {
  final User user;
  const BonusPoints({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: 343.w,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp,),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 4,
                offset: const Offset(-6, 10), // Shadow position
              ),
            ],
          ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Бонусные баллы',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.question_mark_outlined,
                    color: Colors.grey,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${user.bonus_points} баллов',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: greenMainColor),
              ),
              Text(
                'Уровень 2',
                style: TextStyle(fontSize: 16.sp, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
