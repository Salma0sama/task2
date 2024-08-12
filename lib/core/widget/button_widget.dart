import 'package:flutter/material.dart';
import 'package:task2/core/utils/constants.dart';
import 'package:task2/core/utils/helper.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key, required this.onPressed, this.buttonText, this.borderRadius});
  final Function() onPressed;

  final String? buttonText;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kButtonColor,
            minimumSize: Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(32),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            buttonText ?? "التالي",
            style: TextStyle(
              color: kButtonTextColor,
              fontSize: context.screenWidth * .045,
            ),
          )),
    );
  }
}
