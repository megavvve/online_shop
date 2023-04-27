import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/marketing_sticker.dart';

class MarketingStickersUI extends StatelessWidget {
  final List<MarketingSticker> marketingStickerList;
  const MarketingStickersUI({super.key, required this.marketingStickerList});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: marketingStickerList
          .map(
            (item) => Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: item.backColor,
                    borderRadius: BorderRadius.circular(4.0.sp),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5.5.h, horizontal: 8.w),
                  child: Row(
                    children: [
                      item.icon,
                      Text(
                        item.text,
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: item.textColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(width:8.w),
              ],
            ),
          )
          .toList(),
    );
  }
}
