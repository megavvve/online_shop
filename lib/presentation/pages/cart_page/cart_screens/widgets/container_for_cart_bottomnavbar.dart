import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/user_bloc/bloc/user_bloc.dart';
import 'package:online_shop/domain/models/user/user.dart';
import 'package:online_shop/presentation/pages/make_order/new_user/phone_regestration.dart';
import 'package:online_shop/presentation/pages/make_order/user_order/make_order.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/utils/navigator_key.dart';

class ContainerForCartBottomNavBar extends StatelessWidget {
  const ContainerForCartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        User user = state.user;
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
                    if (user != User.defaultValue) {
                      navigatorKey.currentState?.push(
                        MaterialPageRoute(
                          builder: (context) => const MakeOrder(),
                        ),
                      );
                    } else {
                      PhoneRegistration(context, user);
                    }
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  )),
            ),
          ),
        );
      },
    );
  }
}
