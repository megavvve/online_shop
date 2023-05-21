import 'package:flutter/material.dart';
import 'package:online_shop/utils/app_colors.dart';

class MarketingSticker {
  final String text;
  final Color backColor;
  final Color textColor;
  final Image icon;

  MarketingSticker(
      {required this.text,
      required this.backColor,
      required this.icon ,
      this.textColor = Colors.white});
  static List<MarketingSticker> marketingStickerList = [
    MarketingSticker(
      text: '-25%',
      backColor: Colors.red,
      icon:  const Image(image:AssetImage('assets/icons/card_item_screen/empty.png'),color: Colors.red,),
    ),
    MarketingSticker(
      text: 'Органик',
      backColor: greenMainColor,
      icon: const Image(image:AssetImage('assets/icons/card_item_screen/organic_leaf.png'),),
    ),
    MarketingSticker(
      text: 'Экспресс-доставка',
      backColor: const Color(0xFFFFDD00),
      icon:const Image(image:AssetImage('assets/icons/card_item_screen/express_car.png'),),
      textColor: Colors.black,
    ),
  ];
}
