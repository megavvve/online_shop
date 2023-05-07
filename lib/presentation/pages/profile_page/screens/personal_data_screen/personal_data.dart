import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/blocs/user_bloc/bloc/user_bloc.dart';
import 'package:online_shop/domain/models/user/user.dart';

import 'package:online_shop/presentation/pages/profile_page/screens/personal_data_screen/widgets/save_button.dart';
import 'package:online_shop/utils/app_bars.dart';
import 'package:online_shop/utils/app_colors.dart';

import 'widgets/my_textfield.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: const SaveButton(),
      appBar: appBarPersonalData,
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          final User user = state.user;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 32.w,
              ),
              child: Column(
                children: [
                  MyTextField(
                    textForController: user.name.firstname,
                    keyboardType: TextInputType.text,
                    labelText: 'Имя',
                    icon: Icon(null),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  MyTextField(
                    textForController: user.name.lastname,
                    keyboardType: TextInputType.text,
                    labelText: 'Фамилия',
                    icon: Icon(null),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  MyTextField(
                    textForController: '',
                    keyboardType: TextInputType.datetime,
                    labelText: 'Дата рождения',
                    icon: Icon(
                      Icons.calendar_today_outlined,
                      color: thirdColor,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  MyTextField(
                    textForController: user.phone,
                    keyboardType: TextInputType.phone,
                    labelText: 'Телефон',
                    icon: Icon(null),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  MyTextField(
                    textForController: user.email,
                    keyboardType: TextInputType.text,
                    labelText: 'E-mail',
                    icon: Icon(null),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
