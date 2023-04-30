import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/bloc/cart_bloc.dart';
import 'package:online_shop/utils/app_colors.dart';

import 'presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (contex) => CartBloc(),
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) {
            //print(ModalRoute.of(context)?.settings.name);
            return MaterialApp(
              theme: ThemeData(
                primaryColor: backgroundColor,
              ),
              home: const Scaffold(
                body: SplashScreen(),
              ),
            );
          },),
    );
  }
}
