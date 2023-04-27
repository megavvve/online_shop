import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/domain/models/marketing_sticker.dart';
import 'package:online_shop/domain/models/product_card.dart';
import 'package:online_shop/presentation/bottom_nav_bar/card_item_navbar.dart';
import 'package:online_shop/presentation/bottom_nav_bar/my_bottomNavigationBar.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/item_info.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/link_on_brand.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/marketing_stickers_UI.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/weight_item_card.dart';
import 'package:online_shop/utils/app_colors.dart';

import '../widgets/reccomend_card_item.dart';

class ItemCardPage extends StatefulWidget {
  ItemCardPage({
    super.key,
  });
  
    @override
    State<ItemCardPage> createState() => _ItemCardPageState();
  }
  
  class _ItemCardPageState extends State<ItemCardPage> {
  
  ProductCard productCard = ProductCard.listProdCard[1];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xFFFAFBF9),
      appBar: AppBar(
        foregroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "Говядина",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        actions: [
          SvgPicture.asset(
            'assets/icons/card_item_screen/upload_app_bar.svg',
          ),
          SizedBox(
            width: 17.w,
          ),
          Icon(
            Icons.favorite_outline,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            width: 10.w,
          )
        ],
        toolbarHeight: 56.h,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.sp),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: 375.w,
            child: Image(
              image: AssetImage(productCard.imageUrl),
            ),
          ),
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
                  'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(
                  height: 36.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                        'assets/icons/main_screen/app_bar_icon.svg'),
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
                WeightItemCard(),
                SizedBox(
                  height: 24.h,
                ),
                const ItemInfo(),
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
