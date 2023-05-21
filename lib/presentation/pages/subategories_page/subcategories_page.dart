import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/presentation/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/presentation/pages/widgets/product_ui.dart';
import 'package:online_shop/utils/app_bars.dart';
import 'package:online_shop/utils/app_colors.dart';

class SubcategoriesPage extends StatefulWidget {
  final String category;
  const SubcategoriesPage({super.key, required this.category});

  @override
  State<SubcategoriesPage> createState() => _SubcategoriesPageState();
}

class _SubcategoriesPageState extends State<SubcategoriesPage> {
  bool toogle = true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
      List<Product> prodList = state.prodList;
      List<Product> prodListThisCategory = toogle
          ? prodList.where((x) => x.category == widget.category).toList()
          : prodList
              .where((x) => x.category == widget.category)
              .toList()
              .reversed
              .toList();

      return Scaffold(
        appBar: appBarSubcategories,
        backgroundColor: backgroundColor,
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 16.h,
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${prodListThisCategory.length} товаров",
                    style: TextStyle(
                      color: const Color(
                        0xFFC0C0CA,
                      ),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(
                        () {
                          toogle = !toogle;
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "По дате добавления",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        toogle
                            ? Icon(
                                Icons.arrow_downward,
                                color: Colors.black,
                                size: 16.sp,
                              )
                            : Icon(
                                Icons.arrow_upward,
                                color: Colors.black,
                                size: 16.sp,
                              ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                widget.category,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24.h),
              GridView.count(
                physics:
                    const NeverScrollableScrollPhysics(), 
                shrinkWrap: true,
                childAspectRatio: 0.6.h,
                crossAxisCount: 2,
                children: List.generate(
                  prodListThisCategory.length,
                  (index) => ProductUI(
                    product: prodListThisCategory[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
