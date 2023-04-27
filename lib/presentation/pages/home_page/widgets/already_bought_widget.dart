import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/domain/models/product_card.dart';
import 'package:online_shop/presentation/pages/widgets/product_card_UI.dart';

class AlreadyBoughtWidget extends StatelessWidget {
  const AlreadyBoughtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Уже покупали',
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 18.h,
          ),
          SizedBox(
              height: 260.h,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductCardUI(productCard: ProductCard.listProdCard[0]);
                },
              )),
        ],
      ),
    );
  }
}
