import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/features/auth/login/presentation/views/cubit/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitialState());

  void login() {
    try {
      emit(LoginSuccess());
    } on Exception {
      emit(LoginFailed());
    }
  }
}
