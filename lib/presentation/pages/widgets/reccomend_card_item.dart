import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/data/api/repository/products_repository.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/presentation/pages/widgets/product_UI.dart';

class RecommendCardItem extends StatelessWidget {
  const RecommendCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
        future: ProductsRepository().getProductsList(),
        builder: (context, snapshot) {
          List<Product> listProd = snapshot.data ?? [];
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
                itemCount: listProd.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductUI(product:listProd[index],);
                },
              ),
            ),
          ],
        );
      }
    );
  }
}
