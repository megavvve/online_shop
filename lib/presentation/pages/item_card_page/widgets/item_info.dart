import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/utils/app_texts.dart';

import 'review/review_widget.dart';

class ItemInfo extends StatefulWidget {
  final Product product;
  const ItemInfo({super.key, required this.product});

  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  int _selectedTab = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        SizedBox(
          height: 16.h,
        ),
        if (_selectedTab == 1)
          Text(
            widget.product.description,
            style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xff8E9096),
            ),
          ),
        if (_selectedTab == 2) characteristicsTextItem,
        if (_selectedTab == 3) ReviewWidget(rating: widget.product.rating,),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}
