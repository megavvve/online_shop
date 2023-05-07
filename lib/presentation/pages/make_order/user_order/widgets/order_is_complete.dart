import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shop/blocs/cart_bloc/cart_bloc.dart';
import 'package:online_shop/blocs/user_bloc/bloc/user_bloc.dart';
import 'package:online_shop/domain/models/cart/cart.dart';
import 'package:online_shop/domain/models/user/user.dart';

class OrderIsComplete extends StatefulWidget {
  OrderIsComplete({super.key});

  @override
  State<OrderIsComplete> createState() => _OrderIsCompleteState();
}

class _OrderIsCompleteState extends State<OrderIsComplete> {
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
     

        return Center(child: const Text('Заказ оформлен'));
      },
    );
  }
}
