import 'package:flutter/material.dart';
import 'package:task2/core/utils/constants.dart';
import 'package:task2/core/utils/helper.dart';

class PurpleDotWidget extends StatelessWidget {
  const PurpleDotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: kButtonColor),
      width: context.screenWidth * .080,
      height: context.screenWidth * .019,
    );
  }
}
