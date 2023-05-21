import 'package:flutter/material.dart';
import 'package:online_shop/presentation/navigation/routes.dart';
import 'package:online_shop/presentation/pages/widgets/my_bottom_navigation_bar.dart';
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
            body: WillPopScope(
              onWillPop: () async => !await navigatorKey.currentState!.maybePop(),
              child: Navigator(
                    key: navigatorKey,
                    onGenerateRoute: routes,
                    
                    onPopPage: (route, result) {
                      return route.didPop(
              result,
                      );
                    },
              ),
            ),
          ),);
  }
}
