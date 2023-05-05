import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/category_bloc/bloc/category_bloc.dart';
import 'package:online_shop/data/api/repository/category_repository.dart';
import 'package:online_shop/presentation/pages/home_page/widgets/category_card_UI.dart';

class PopularCategoriesWidget extends StatelessWidget {
  const PopularCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      List<String> listCategory = state.categoryList;
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Популярные категории',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18.h,
            ),
            SizedBox(
              height: 130.h,
              child: ListView.builder(
                itemCount: listCategory.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryCardUI(category: listCategory[index]);
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
