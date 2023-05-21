import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/presentation/pages/subategories_page/subcategories_page.dart';
import 'package:online_shop/utils/navigator_key.dart';

class CategoryCardUI extends StatelessWidget {
  final String category;
  const CategoryCardUI({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 4.w,
        left: 8.w,
      ),
      child: InkWell(
        onTap: () {
          navigatorKey.currentState?.push(
            MaterialPageRoute(
              builder: (context) => SubcategoriesPage(
                category: category,
              ),
            ),
          );
        },
        child: Align(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.sp),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 4,
                  offset: const Offset(-6, 10),
                ),
              ],
            ),
            padding: EdgeInsets.only(right: 8.w, left: 12.w, bottom: 12.h),
            height: 104.h,
            width: 104.w,
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        category,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
