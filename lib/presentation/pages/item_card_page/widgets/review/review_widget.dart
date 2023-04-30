import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/product/rating.dart';
import 'package:online_shop/presentation/pages/item_card_page/widgets/review/widget/rating_stars.dart';
import 'package:online_shop/utils/app_colors.dart';

class ReviewWidget extends StatelessWidget {
  final Rating rating;
  const ReviewWidget({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 12.h,horizontal: 8.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  RatingStars(
                    rating: rating.rate.toDouble(),
                  ),
                  SizedBox(width: 8.w,),
                  Text(rating.rate.toString(),style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w500),),
                ],
              ),
              Text("${rating.count.toString()} отзыва",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp,),)
            ],
          ),
          SizedBox(height: 30.h,),
           Align(
            alignment: Alignment.center,
             child: SizedBox(
                  height: 58.h,
                  width: 365.w,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(greenMainColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(43.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'Посмотреть отзывы',
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      )),
                ),
           ),
        ],
      ),
    );
  }
}
