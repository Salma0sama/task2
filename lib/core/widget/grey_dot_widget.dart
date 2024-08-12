import 'package:flutter/material.dart';
import 'package:task2/core/utils/helper.dart';

class GreyDotWidget extends StatelessWidget {
  const GreyDotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromARGB(121, 158, 158, 158),
      ),
      width: context.screenWidth * .025,
      height: context.screenWidth * .025,
    );
  }
}
