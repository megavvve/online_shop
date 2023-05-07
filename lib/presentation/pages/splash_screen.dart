import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop/blocs/cart_bloc/cart_bloc.dart';
import 'package:online_shop/blocs/category_bloc/bloc/category_bloc.dart';
import 'package:online_shop/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/blocs/user_bloc/bloc/user_bloc.dart';
import 'package:online_shop/presentation/pages/home.dart';
import 'package:online_shop/utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    DateTime dateTime = DateTime.now();
    String date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
    final blocUser = context.read<UserBloc>();
    blocUser.add(UserInit());
    final blocProduct = context.read<ProductBloc>();
    blocProduct.add(ProductInit());
    final blocCategory = context.read<CategoryBloc>();
    blocCategory.add(CategoryInit());
    final blocCart = context.read<CartBloc>();
    blocCart.add(CartInit(date: date, userId: blocUser.state.user.id, id: 1,));
    changeScreen();
    super.initState();
  }

  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greenMainColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/splash/splash.svg'),
          SizedBox(
            height: 17.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Органик',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text('маркет',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
