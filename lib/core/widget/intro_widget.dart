import 'package:flutter/material.dart';
import 'package:task2/core/utils/constants.dart';
import 'package:task2/core/utils/gaps.dart';
import 'package:task2/core/utils/helper.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Gaps.vGap50,
        Text(
          "من لديه الإرادة والعزيمة\nهو من لديه القوة.",
          style: TextStyle(
            color: kButtonColor,
            fontSize: context.screenWidth * .058,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Gaps.vGap40,
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        // Container(
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(50), color: kButtonColor),
        //   width: 32,
        //   height: 8,
        // ),
        //     SizedBox(
        //       width: 5,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(50),
        //         color: Color.fromARGB(121, 158, 158, 158),
        //       ),
        //       width: context.screenWidth * .025,
        //       height: context.screenWidth * .025,
        //     ),
        //     SizedBox(
        //       width: 5,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(50),
        //         color: Color.fromARGB(121, 158, 158, 158),
        //       ),
        //       width: 10,
        //       height: 10,
        //     ),
        //   ],
        // ),
        // Gaps.vGap15,
        // ButtonWidget(onPressed: onPressed, buttonText: buttonText ?? "التالي")
      ],
    );
  }
}
