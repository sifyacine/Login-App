import 'package:flutter/material.dart';
import 'package:loginapp/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome",
            style: TextStyle(
              color: kBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}
