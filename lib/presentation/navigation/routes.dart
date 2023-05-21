import 'package:flutter/material.dart';
import 'package:online_shop/presentation/pages/cart_page/cart_page.dart';
import 'package:online_shop/presentation/pages/catalog_page/catalog_page.dart';
import 'package:online_shop/presentation/pages/find_page/find_page.dart';
import 'package:online_shop/presentation/pages/home_page/home_page.dart';
import 'package:online_shop/presentation/pages/profile_page/profile_page.dart';

Route<dynamic> routes(RouteSettings settings) {
 
  switch (settings.name) {
    case "Home":
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomePage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      );
    case "Catalog":
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CatalogPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      );
    case "Find":
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const FindPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      );
    case "Cart":
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CartPage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      );
    case "Profile":
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ProfilePage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      );
    default:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomePage(),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      );
  }
}
