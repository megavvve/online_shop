import 'package:flutter/material.dart';
import 'package:online_shop/presentation/bottom_nav_bar/my_bottomNavigationBar.dart';
import 'package:online_shop/utils/app_bars.dart';

class SubcategoriesPage extends StatelessWidget {
  const SubcategoriesPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSubcategories,
      body: const Center(
        child: Text('Подкатегория'),
      ),
      /*bottomNavigationBar: MyBottomNavigationBar(
          selectedTab: 1, onSelectedTab: (int){}),*/
    );
  }
}
