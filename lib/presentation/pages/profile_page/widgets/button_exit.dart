import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/blocs/user_bloc/bloc/user_bloc.dart';
import 'package:online_shop/presentation/pages/home_page/home_page.dart';
import 'package:online_shop/utils/navigator_key.dart';

class ButtonExit extends StatelessWidget {
  const ButtonExit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final bloc = context.read<UserBloc>();

        return TextButton(
          onPressed: () {
            bloc.add(UserDefaultValueInit());
            navigatorKey.currentState?.push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
          },
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/profile/quit_profile.svg',
                color: Colors.grey,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Выйти',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
