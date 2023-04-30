import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/presentation/pages/catalog_page/widgets/buttons_top_widget.dart';
import 'package:online_shop/presentation/pages/catalog_page/widgets/categories_widget.dart';
import 'package:online_shop/presentation/pages/widgets/my_bottom_navigation_bar.dart';
import 'package:online_shop/utils/app_bars.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHomePage,body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 17.h,
            ),
            const ButtonsTopWidget(),
            SizedBox(
              height: 32.h,
            ),
            const CategoriesWidget(),
          ],
        ),
      ),
    );
  }
}
