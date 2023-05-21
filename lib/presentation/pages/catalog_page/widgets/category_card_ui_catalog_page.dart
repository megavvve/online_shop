import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:online_shop/presentation/pages/subategories_page/subcategories_page.dart';
import 'package:online_shop/utils/navigator_key.dart';

class CategoryCardUI extends StatelessWidget {
  final String category;
  const CategoryCardUI({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.only(right: 16.w, bottom: 16.h),
        child: InkWell(
          onTap: () {
           navigatorKey.currentState?.push(
                  MaterialPageRoute(
                    builder: (context) =>  SubcategoriesPage(category: category,),
                  ),
                );
          },
          child: Container(
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
            padding: EdgeInsets.only(right: 8.w, left: 12.w, bottom: 12.h),
            height: 117.h,
            width: 163.w,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 120.w,
                    child: Text(
                      category,
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
