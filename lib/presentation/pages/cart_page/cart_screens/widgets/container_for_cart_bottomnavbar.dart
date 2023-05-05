import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/data/api/repository/user_repository.dart';
import 'package:online_shop/domain/models/user/address/address.dart';
import 'package:online_shop/domain/models/user/address/geolocation.dart';
import 'package:online_shop/domain/models/user/name.dart';
import 'package:online_shop/domain/models/user/user.dart';
import 'package:online_shop/presentation/pages/make_order/new_user/phone_regestration.dart';
import 'package:online_shop/utils/app_colors.dart';

class ContainerForCartBottomNavBar extends StatelessWidget {
  const ContainerForCartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
        future: UserRepository().getUser(),
        builder: (context, snapshot) {
          User user = snapshot.data ?? User(id: 0, email: '', username: '', password: '', name: Name(firstname: '', lastname: ''), address: Address(city: '', street: '', number: 0, zipcode: '', geolocation: Geolocation(lat: '', long: '')), phone: '',);
          return Container(
            padding: EdgeInsets.all(16.sp),
            height: 90.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                17.sp,
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 58.h,
                width: 343.w,
                child: ElevatedButton(
                    onPressed: () {
                      PhoneRegistration(
                        context,
                        user
                      );
                    },
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
                      'Перейти к оформлению',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    )),
              ),
            ),
          );
        });
  }
}
