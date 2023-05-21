import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/presentation/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/presentation/pages/widgets/product_ui.dart';

class AlreadyBoughtWidget extends StatelessWidget {
  const AlreadyBoughtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        List<Product> listProd = state.prodList;
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
          ),
        );
      },
    );
  }
}
