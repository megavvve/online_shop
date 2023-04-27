import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child:Padding(
        padding:  EdgeInsets.symmetric(horizontal:8.w),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Бренды',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
            SizedBox(height: 18.h,),
            Image(image: AssetImage("assets/images/brands/brands.png"),)
              
          ],
        ),
      )
    );
  }
}