import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/cart_bloc/cart_bloc.dart';
import 'package:online_shop/blocs/user_bloc/bloc/user_bloc.dart';
import 'package:online_shop/domain/models/cart/cart.dart';
import 'package:online_shop/domain/models/user/user.dart';
import 'package:online_shop/presentation/pages/profile_page/screens/my_orders_screen/my_orders.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/utils/navigator_key.dart';

class OrderIsComplete extends StatefulWidget {
  OrderIsComplete({super.key});

  @override
  State<OrderIsComplete> createState() => _OrderIsCompleteState();
}

class _OrderIsCompleteState extends State<OrderIsComplete> {
  late String date;
  @override
  void initState() {
    DateTime dateTime = DateTime.now();

    date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Заказ успешно оформлен',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 47.h,
              width: 247.w,
              child: ElevatedButton(
                onPressed: () {
                  navigatorKey.currentState?.pushReplacementNamed(
                    "Home",
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(greenMainColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(43.0.sp),
                    ),
                  ),
                ),
                child: Text(
                  'Продолжить покупки',
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            TextButton(
              onPressed: () {
                
                navigatorKey.currentState?.push(
                  MaterialPageRoute(
                    builder: (context) => const MyOrders(),
                  ),
                );
              },
              child: Text(
                'Смотреть мои заказы',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: greenMainColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }
}
