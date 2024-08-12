import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task2/core/utils/assets.dart';
import 'package:task2/core/utils/constants.dart';
import 'package:task2/core/utils/gaps.dart';
import 'package:task2/core/utils/helper.dart';
import 'package:task2/core/widget/button_widget.dart';
import 'package:task2/features/auth/login/presentation/views/cubit/login_cubit/login_cubit.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap100,
        Gaps.vGap30,
        Text(
          "مرحباً بك ..",
          style: TextStyle(
            fontSize: context.screenWidth * .075,
            fontWeight: FontWeight.bold,
          ),
        ),
        Gaps.vGap30,
        Text(
          "أهلا بك في جيم النعماني نأمل أن تكون دائماً عند\n حسن ظنكم وأن تنال جميع خدماتنا إعجابكم",
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: context.screenWidth * .039,
            fontWeight: FontWeight.w500,
          ),
        ),
        Gaps.vGap50,
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              "رقم الهاتف",
              style: TextStyle(
                color: kButtonColor,
                fontSize: context.screenWidth * .045,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Gaps.vGap4,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  AssetsData.deleteText,
                  width: context.screenWidth * .065,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kSecondaryColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kButtonColor,
                ),
              ),
            ),
          ),
        ),
        Gaps.vGap50,
        Gaps.vGap10,
        ButtonWidget(
          onPressed: () {
            BlocProvider.of<LoginCubit>(context).login();
          },
          buttonText: "تسجيل الدخول",
          borderRadius: BorderRadius.circular(18),
        ),
        Spacer(
          flex: 1,
        ),
        Image.asset(
          AssetsData.loginImage,
        )
      ],
    );
  }
}
