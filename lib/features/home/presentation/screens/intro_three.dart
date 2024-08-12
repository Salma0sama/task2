import 'package:flutter/material.dart';
import 'package:task2/core/utils/assets.dart';
import 'package:task2/core/utils/gaps.dart';
import 'package:task2/core/widget/button_widget.dart';
import 'package:task2/core/widget/grey_dot_widget.dart';
import 'package:task2/core/widget/intro_widget.dart';
import 'package:task2/core/widget/purple_dot_widget.dart';

class IntroThreeScreen extends StatelessWidget {
  const IntroThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const IntroWidget(
            image: AssetsData.introImage3,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GreyDotWidget(),
              SizedBox(
                width: 5,
              ),
              GreyDotWidget(),
              SizedBox(
                width: 5,
              ),
              PurpleDotWidget(),
            ],
          ),
          Gaps.vGap15,
          ButtonWidget(
            onPressed: () {},
            buttonText: "هيا لنبدأ",
          )
        ],
      ),
    );
  }
}
