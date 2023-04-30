import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/profile_data.dart';
import 'package:online_shop/utils/navigator_key.dart';

class ProfileDataWidget extends StatelessWidget {
  final List<ProfileData> profileDataList;
  const ProfileDataWidget({super.key, required this.profileDataList});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 1.0.h,
      children: profileDataList
          .map((item) => InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        const Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                onTap: () {
                  navigatorKey.currentState?.push(
                  MaterialPageRoute(
                    builder: (context) => item.widget,
                  ),
                );
                },
              ))
          .toList(),
    );
  }
}
