import 'package:flutter/material.dart';
import 'package:online_shop/utils/app_bars.dart';

class FindPage extends StatelessWidget {
  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHomePage,
      body: const Center(
        child: Text("Find"),
      ),
    );
  }
}
