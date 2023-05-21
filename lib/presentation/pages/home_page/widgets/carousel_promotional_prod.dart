import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/domain/models/promotional_products.dart';

class CarouselPromotionalProduct extends StatelessWidget {
  const CarouselPromotionalProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.sp,
        ),
      ),
      child: CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          autoPlayInterval: const Duration(seconds: 4),
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
      ),
    );
  }
}

final List<Widget> imageSliders = PromotionalProduct.promProdList
    .map((item) => Container(
          height: 335.h,
          decoration: BoxDecoration(
            color: item.color,
            borderRadius: BorderRadius.circular(
              16.sp,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(
              top: 16.h,
              left: 16.w,
              right: 16.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 233.w,
                  child: Text(
                    item.name,
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 175.w,
                          child: Text(
                            item.describe,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                height: 1.2.h),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 35.h,
                          width: 131.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  greenMainColor),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(43.0.sp),
                                ),
                              ),
                            ),
                            child: Text(
                              'Узнать больше',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ClipOval(
                      child: item.image,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),)
    .toList();
