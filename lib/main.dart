import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:task2/core/utils/constants.dart';
import 'package:task2/features/auth/login/presentation/views/cubit/login_cubit/login_cubit.dart';
import 'package:task2/features/auth/login/presentation/views/login_screen.dart';
import 'package:task2/features/home/presentation/screens/intro_one.dart';
import 'package:task2/features/home/presentation/screens/intro_three.dart';
import 'package:task2/features/home/presentation/screens/intro_two.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) {
        return LoginCubit();
      },
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "El Messiri",
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        kHomeScreen: (context) => const IntroOneScreen(),
        kSecondScreen: (context) => const IntroTwoScreen(),
        kThirdScreen: (context) => const IntroThreeScreen(),
      },
    );
  }
}
