import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:online_shop/blocs/cart_bloc/cart_bloc.dart';
import 'package:online_shop/blocs/category_bloc/bloc/category_bloc.dart';
import 'package:online_shop/blocs/product_bloc/bloc/product_bloc.dart';
import 'package:online_shop/blocs/user_bloc/bloc/user_bloc.dart';

import 'package:online_shop/utils/app_colors.dart';

import 'presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (contex) => CartBloc(),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => ProductBloc(),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: backgroundColor,
            ),
            home: const Scaffold(
              body: SplashScreen(),
            ),
          );
        },
      ),
    );
  }
}
