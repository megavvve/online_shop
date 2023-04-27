import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/domain/models/promotional_products.dart';

class CarouselPromotionalProduct extends StatelessWidget {
  const CarouselPromotionalProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.sp),
      child: SizedBox(
        height: 208.h,
        child: CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              autoPlayInterval: Duration(seconds: 4),
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 2,
              autoPlay: true,
            )),
      ),
    );
  }
}

final List<Widget> imageSliders = PromotionalProduct.promProdList
    .map((item) => Container(
      decoration: BoxDecoration(color: item.color,borderRadius: BorderRadius.circular(16.sp)),
          
          height: 208.h,
          width: 335.w,
          child: Stack(
            children: <Widget>[
              Positioned(
                  right: 0, bottom: 0, child: ClipOval(child: item.image)),
              Container(
                padding: EdgeInsets.all(16.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 233.w,
                        child: Text(
                          item.name,
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: 175.w,
                      child: Text(item.describe,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w400)),
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
                                borderRadius: BorderRadius.circular(43.0),
                              ),
                            ),
                          ),
                          child: Text(
                            'Узнать больше',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ))
    .toList();
