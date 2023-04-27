import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_bars.dart';

import 'widgets/already_bought_widget.dart';
import 'widgets/best_offers.dart';
import 'widgets/brands.dart';
import 'widgets/buttons.dart';
import 'widgets/carousel_promotional_prod.dart';
import 'widgets/popular_categories_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHomePage,
      body: ListView(
        children: [
          SizedBox(
            height: 28.h,
          ),
          const CarouselPromotionalProduct(),
          SizedBox(
            height: 36.h,
          ),
          const PopularCategoriesWidget(),
          SizedBox(
            height: 36.h,
          ),
          const BestOffers(),
          SizedBox(
            height: 36.h,
          ),
          const AlreadyBoughtWidget(),
          SizedBox(
            height: 36.h,
          ),
          const Brands(),
          const Buttons(),
          SizedBox(
            height: 42.h,
          ),
        ],
      ),
    );
  }
}
