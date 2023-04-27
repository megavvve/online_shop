import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_texts.dart';

class ItemInfo extends StatefulWidget {
  const ItemInfo({super.key});

  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  int _selectedTab = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 557.h,
      child: Column(
        children:[ Row(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedTab = 1;
                });
              },
              child: Text(
                'Описание',
                style: TextStyle(
                  color: (_selectedTab == 1)
                      ? Colors.black
                      : const Color(
                          0xFFB9B9B9,
                        ),
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedTab = 2;
                });
              },
              child: Text(
                'Характеристики',
                style: TextStyle(
                  color: (_selectedTab == 2)
                      ? Colors.black
                      : const Color(
                          0xFFB9B9B9,
                        ),
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedTab = 3;
                });
              },
              child: Text(
                'Отзывы',
                style: TextStyle(
                  color: (_selectedTab == 3)
                      ? Colors.black
                      : const Color(
                          0xFFB9B9B9,
                        ),
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h,),
        if(_selectedTab==1)describeTextItem,
        if(_selectedTab==2)characteristicsTextItem,
        if(_selectedTab==3)reviewTextItem,
        ]
      ),
    );
  }
}
