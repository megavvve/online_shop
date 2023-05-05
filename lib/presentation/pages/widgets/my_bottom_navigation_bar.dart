import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/blocs/cart_bloc/cart_bloc.dart';

import 'package:online_shop/utils/navigator_key.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({
    super.key,
  });

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedTab = 0;

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        navigatorKey.currentState?.pushNamed(
          "Home",
        );
        break;
      case 1:
        navigatorKey.currentState?.pushNamed("Catalog");
        break;
      case 2:
        navigatorKey.currentState?.pushNamed("Find");
        break;
      case 3:
        navigatorKey.currentState?.pushNamed("Cart");
        break;
      case 4:
        navigatorKey.currentState?.pushNamed("Profile");
        break;
    }
    setState(() {
      _selectedTab = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0.sp),
                topRight: Radius.circular(20.0.sp),
              ),
              child: SizedBox(
                height: 80.h,
                child: BottomNavigationBar(
                  selectedItemColor: Colors.green,
                  unselectedItemColor: Colors.grey.shade400,
                  currentIndex: _selectedTab,
                  onTap: _onTap,
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: _selectedTab == 0
                          ? SvgPicture.asset(
                              'assets/icons/main_screen/BottomNavBar1.svg',
                            )
                          : SvgPicture.asset(
                              'assets/icons/main_screen/BottomNavBar1Grey.svg',
                            ),
                      label: 'Главная',
                    ),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          'assets/icons/main_screen/BottomNavBar2.svg',
                          color: _selectedTab == 1
                              ? Colors.green
                              : Colors.grey.shade400,
                        ),
                        label: 'Каталог'),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          'assets/icons/main_screen/BottomNavBar3.svg',
                          color: _selectedTab == 2
                              ? Colors.green
                              : Colors.grey.shade400,
                        ),
                        label: 'Поиск'),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          'assets/icons/main_screen/BottomNavBar4.svg',
                          color: _selectedTab == 3
                              ? Colors.green
                              : Colors.grey.shade400,
                        ),
                        label: 'Корзина'),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          'assets/icons/main_screen/BottomNavBar5.svg',
                          color: _selectedTab == 4
                              ? Colors.green
                              : Colors.grey.shade400,
                        ),
                        label: 'Профиль'),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
