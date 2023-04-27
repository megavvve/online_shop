import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/product_card.dart';
import 'package:online_shop/presentation/pages/widgets/product_card_UI.dart';

class RecommendCardItem extends StatelessWidget {
  const RecommendCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Рекомендуем',
          style: TextStyle(
            fontSize: 20.sp,
          ),
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
              return ProductCardUI(productCard: ProductCard.listProdCard[0],);
            },
          ),
        ),
      ],
    );
  }
}
