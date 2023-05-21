import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/domain/models/cart/cart.dart';
import 'package:online_shop/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:online_shop/presentation/pages/make_order/user_order/make_order.dart';
import 'package:online_shop/presentation/pages/make_order/user_order/widgets/order_is_complete.dart';
import 'package:online_shop/utils/app_colors.dart';
import 'package:online_shop/utils/navigator_key.dart';

class GoToOrdering extends StatefulWidget {
  const GoToOrdering({
    super.key,
  });

  @override
  State<GoToOrdering> createState() => _GoToOrderingState();
}

class _GoToOrderingState extends State<GoToOrdering> {
  late String date;
  @override
  void initState() {
    DateTime dateTime = DateTime.now();

    date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final bloc = context.read<CartBloc>();
        return Container(
          padding: EdgeInsets.all(16.sp),
          height: 134.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(17)),
          child: Column(
            children: [
              SizedBox(
                height: 58.h,
                width: 343.w,
                child: ElevatedButton(
                    onPressed: () {
                      if (textEditingController1.text.isEmpty ||
                          textEditingController2.text.isEmpty ||
                          textEditingController3.text.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Ошибка ввода данных'),
                                content: const Text(
                                  'Одно или несколько из обязательных полей не заполненны.',
                                ),
                                actions: <Widget>[
                                  FloatingActionButton(
                                    backgroundColor: greenMainColor,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Ок'),
                                  )
                                ],
                              );
                            });
                      } else {
                        Cart cart = state.cart;

                        bloc.add(const AddCartToList());
                        bloc.add(
                          CartInit(
                            id: cart.id + 1,
                            userId: cart.userId,
                            date: date,
                          ),
                        );
                        bloc.add(ResetListEvent());
                        navigatorKey.currentState?.push(
                          MaterialPageRoute(
                            builder: (context) => const OrderIsComplete(),
                          ),
                        );
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
                      'Оформить заказ',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Нажимая “Оформить заказ”, вы принимаете условия',
                style: TextStyle(
                  color: const Color(0xFFB8BBC1),
                  fontSize: 12.sp,
                ),
              ),
              Text(
                'публичной оферты',
                style: TextStyle(
                  color: greenMainColor,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
