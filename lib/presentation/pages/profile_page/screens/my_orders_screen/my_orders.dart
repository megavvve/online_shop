import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/presentation/pages/profile_page/screens/my_orders_screen/widgets/order_UI.dart';
import 'package:online_shop/utils/app_bars.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMyOrders,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 34.h,
        ),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return const OrderUI();
          },
        ),
      ),
    );
  }
}
