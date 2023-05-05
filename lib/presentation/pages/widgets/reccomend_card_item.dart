import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/presentation/pages/widgets/product_UI.dart';

class RecommendCardItem extends StatelessWidget {
  const RecommendCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        
        final listProd = state.prodList;
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
                  return ProductUI(
                    product: listProd[index],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
