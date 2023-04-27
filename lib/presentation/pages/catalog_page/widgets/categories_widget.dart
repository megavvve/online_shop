import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/categories.dart';

import 'category_card_UI.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Категории",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.sp,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
       
        GridView.count(
          childAspectRatio: 1.25.h,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(
              Category.categoriesList.length,
              (index) =>
                  CategoryCardUI(category: Category.categoriesList[index])),
        ),
      ],
    );
  }
}
