import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:online_shop/blocs/user_bloc/bloc/user_bloc.dart';

import 'package:online_shop/domain/models/profile_data.dart';

import 'package:online_shop/domain/models/user/user.dart';
import 'package:online_shop/presentation/pages/profile_page/widgets/bonus_points.dart';
import 'package:online_shop/presentation/pages/profile_page/widgets/botton_exit.dart';
import 'package:online_shop/presentation/pages/profile_page/widgets/profile_data_widget.dart';
import 'package:online_shop/utils/app_bars.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appBarProfilePage,
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          final User user = state.user;
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  user.name.firstname,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
                ),
                Text(
                  user.phone,
                  style: TextStyle(
                      color: const Color(0xFFB8BBC1), fontSize: 18.sp),
                ),
                SizedBox(
                  height: 18.h,
                ),
                BonusPoints(
                  user: user,
                ),
                SizedBox(
                  height: 20.h,
                ),
                ProfileDataWidget(
                  profileDataList: ProfileData.profileDataList,
                ),
                SizedBox(
                  height: 100.h,
                ),
                const ButtonExit(),
              ],
            ),
          );
        },
      ),
    );
  }
}
