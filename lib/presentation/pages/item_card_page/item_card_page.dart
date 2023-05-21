import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/domain/models/marketing_sticker.dart';
import 'package:online_shop/domain/models/product/product.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/container_for_bottomnavbar.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/item_info.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/link_on_brand.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/marketing_stickers_ui.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/weight_item_card.dart';
import 'package:online_shop/utils/app_assets.dart';
import 'package:online_shop/utils/app_bars.dart';
import 'package:online_shop/utils/app_colors.dart';

import '../widgets/reccomend_card_item.dart';

class ItemCardPage extends StatelessWidget {
  final Product product;
  const ItemCardPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFBF9),
      bottomNavigationBar: ContainerForBottomNavBar(product: product),
      appBar: appBarItemCard,
      body: ListView(
        children: [
          Image.network(
            product.imageUrl,
            height: 250.h,
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MarketingStickersUI(
                  marketingStickerList: MarketingSticker.marketingStickerList,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  product.title,
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(
                  height: 36.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      appBarIcon,
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Text(
                      'Ближайшая дата доставки: завтра утром',
                      style: TextStyle(color: greenMainColor, fontSize: 16.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 36.h,
                ),
                const WeightItemCard(),
                SizedBox(
                  height: 24.h,
                ),
                ItemInfo(
                  product: product,
                ),
                const LinkOnBrand(),
                SizedBox(
                  height: 24.h,
                ),
                const RecommendCardItem(),
                SizedBox(
                  height: 23.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
