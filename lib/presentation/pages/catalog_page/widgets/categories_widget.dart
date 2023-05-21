import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/presentation/blocs/category_bloc/bloc/category_bloc.dart';

import 'category_card_ui_catalog_page.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      List<String> listCategory = state.categoryList;
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
              listCategory.length,
              (index) => CategoryCardUI(
                category: listCategory[index],
              ),
            ),
          ),
        ],
      );
    });
  }
}
