import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/presentation/pages/make_order/user_order/widgets/comment.dart';
import 'package:online_shop/presentation/pages/make_order/user_order/widgets/go_to_ordering.dart';
import 'package:online_shop/presentation/pages/make_order/user_order/widgets/textfields_with_data_order.dart';
import 'package:online_shop/presentation/pages/widgets/total_cart_sum.dart';
import 'package:online_shop/utils/app_bars.dart';
import 'package:online_shop/utils/app_colors.dart';

class MakeOrder extends StatefulWidget {
  const MakeOrder({super.key});

  @override
  State<MakeOrder> createState() => _MakeOrderState();
}

bool isDeductPoints = false;
TextEditingController textEditingController1 = TextEditingController();
TextEditingController textEditingController2 = TextEditingController();
TextEditingController textEditingController3 = TextEditingController();

class _MakeOrderState extends State<MakeOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBarMakeOrder,
      bottomNavigationBar: const GoToOrdering(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            SizedBox(
              height: 16.h,
            ),
            TextfieldsWithDataOrder(
              textEditingController1: textEditingController1,
              textEditingController2: textEditingController2,
              textEditingController3: textEditingController3,
            ),
            SizedBox(
              height: 12.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Списать баллы',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Icon(Icons.question_mark_rounded,
                        color: Colors.grey.shade300)
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isDeductPoints = !isDeductPoints;
                    });
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.w),
                    decoration: BoxDecoration(
                      color: isDeductPoints
                          ? greenMainColor
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(
                        32.sp,
                      ),
                    ),
                    width: 44.w,
                    height: 25.h,
                    child: isDeductPoints
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.check,
                              size: 16.sp,
                            ),
                          )
                        : Align(
                            alignment: Alignment.bottomLeft,
                            child: Icon(
                              Icons.circle,
                              color: Colors.white,
                              size: 16.sp,
                            ),
                          ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.5.h,
            ),
            const Comment(),
            SizedBox(
              height: 16.h,
            ),
            const TotalCartSum(),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
