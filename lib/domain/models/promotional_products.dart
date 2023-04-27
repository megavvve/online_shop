import 'package:flutter/material.dart';

class PromotionalProduct {
  final String name;
  final String describe;
  final Image image;
  final Color color;

  PromotionalProduct({required this.name, required this.describe, required this.image, required this.color});
  static List<PromotionalProduct> promProdList = [PromotionalProduct(name: 'Настоящая икра без консервантов', describe: 'Попробуйте икру без химических добавок и консервантов', image: const Image(image: AssetImage('assets/images/prom_image/image_for_prom1.png')), color: const Color(0xFFFCEAE6)),
  PromotionalProduct(name: 'Новинка от УГЛЕЧЕ ПОЛЕ', describe: 'Продукт кисломолочный Угурт питьевой с Вишней 250г', image: const Image(image: AssetImage('assets/images/prom_image/image_for_prom2.png')), color: const Color(0xFFE5E6FB)),PromotionalProduct(name: 'Настоящая икра без консервантов', describe: 'Попробуйте икру без химических добавок и консервантов', image: const Image(image: AssetImage('assets/images/prom_image/image_for_prom1.png')), color: const Color(0xFFEBFAE4))];
}
