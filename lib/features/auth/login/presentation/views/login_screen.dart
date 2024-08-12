import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/features/auth/login/presentation/views/cubit/login_cubit/login_cubit.dart';
import 'package:task2/features/auth/login/presentation/views/cubit/login_cubit/login_state.dart';
import 'package:task2/features/auth/login/presentation/views/widget/login_body.dart';
import 'package:task2/features/home/presentation/screens/intro_one.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(),
        child: Scaffold(
          body: BlocBuilder<LoginCubit, LoginStates>(
            builder: (context, state) {
              if (state is LoginSuccess) {
                return const IntroOneScreen();
              } else if (state is LoginFailed) {
                return const Center(child: Text("Login Failed"));
              } else {
                return const LoginBody();
              }
            },
          ),
        ),
      ),
    );
  }
}
