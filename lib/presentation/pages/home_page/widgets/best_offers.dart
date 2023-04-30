import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/data/api/repository/products_repository.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/presentation/pages/widgets/product_UI.dart';

class BestOffers extends StatelessWidget {
  const BestOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
        future: ProductsRepository().getProductsList(),
        builder: (context, snapshot) {
          List<Product> listProd = snapshot.data ?? [];
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Лучшие предложения',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18.h,
              ),
              SizedBox(
                height: 265.h,
                child: ListView.builder(
                  itemCount: listProd.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductUI(product: listProd[index]);
                  },
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
