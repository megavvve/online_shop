import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/data/api/repository/products_repository.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/presentation/pages/widgets/product_UI.dart';

class AlreadyBoughtWidget extends StatelessWidget {
  AlreadyBoughtWidget({super.key});

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
                  'Уже покупали',
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
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
                        return ProductUI(product: listProd[index]);
                      },
                    )),
              ],
            ),
          );
        });
  }
}
