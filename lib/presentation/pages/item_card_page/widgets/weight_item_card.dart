import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_colors.dart';

class WeightItemCard extends StatefulWidget {
  WeightItemCard({super.key});

  State<WeightItemCard> createState() => _WeightItemCardState();
}

class _WeightItemCardState extends State<WeightItemCard> {
  bool _toogle = true;
  Color backColor = const Color(0xffF2F3F0);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.sp),
      height: 43.h,
      width: 343.w,
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(50.0.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Container(
              height: 35.h,
              width: 165.5.w,
              decoration: BoxDecoration(
                color: (_toogle) ? backColor : Colors.white,
                borderRadius: BorderRadius.circular(50.0.sp),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '0,4 кг',
                    style: TextStyle(
                        color:
                            (_toogle) ? const Color(0xFF8E9096) : Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            onTap: () {
              setState(() {
                _toogle = !_toogle;
              });
            },
          ),
          InkWell(
            child: Container(
                height: 35.h,
                width: 165.5.w,
                decoration: BoxDecoration(
                  color: (_toogle) ? Colors.white : backColor,
                  borderRadius: BorderRadius.circular(50.0.sp),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1,2 кг',
                      style: TextStyle(
                        color:
                            (_toogle) ? Colors.black : const Color(0xFF8E9096),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '-25%',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
            onTap: () {
              setState(() {
                _toogle = !_toogle;
              });
            },
          ),
        ],
      ),
    );
  }
}
