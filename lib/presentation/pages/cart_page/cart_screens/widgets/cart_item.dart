import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/bloc/cart_bloc.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/utils/app_colors.dart';

class CartItem extends StatefulWidget {
  final Product product;
  const CartItem({super.key, required this.product});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    Product product = widget.product;
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final bloc = context.read<CartBloc>();
       
        return Container(
          padding: EdgeInsets.only(
            bottom: 10.h,
            top: 12.5.h,
          ),
          height: 100.h,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                height: 70.h,
                width: 70.w,
                child: Image.network(
                  product.imageUrl,
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              SizedBox(
                width: 259.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 12.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Text(
                          "${product.price} \$",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(
                          50.0.sp,
                        ),
                          ),
                          width: 144.w,
                          height: 32.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  bloc.add(
                                    DeleteCartProd(
                                      product: product,
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "${0.4} кг",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  bloc.add(
                                    AddCartProd(
                                      product: product,
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
