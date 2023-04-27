import 'package:flutter/material.dart';
import 'package:online_shop/navigation/generateRoute.dart';
import 'package:online_shop/presentation/bottom_nav_bar/my_bottomNavigationBar.dart';
import 'package:online_shop/presentation/pages/profile_page/profile_page.dart';
import 'package:online_shop/utils/app_bars.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/utils/navigator_key.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor,
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: Navigator(
        key: navigatorKey,
        onGenerateRoute: generateRoute,
        onPopPage: (route, result) {
          return route.didPop(result,);
        },
      ),
    ));
  }
}
