import 'package:flutter/material.dart';
import 'package:online_shop/presentation/pages/profile_page/screens/my_orders_screen/my_orders.dart';
import 'package:online_shop/presentation/pages/profile_page/screens/personal_data_screen/personal_data.dart';


class ProfileData {
  final String name;
  final Widget widget;

  ProfileData({required this.widget, required this.name});
  static List<ProfileData> profileDataList = [
    ProfileData(widget:  const PersonalData(), name: 'Личные данные'),
    ProfileData(widget: const MyOrders(), name: 'Мои заказы'),
    ProfileData(widget: const SizedBox.shrink(), name: 'Мои адреса'),
    ProfileData(widget: const SizedBox.shrink(), name: 'Способы оплаты'),
    ProfileData(widget: const SizedBox.shrink(), name: 'Связаться с нами'),
  ];
}
