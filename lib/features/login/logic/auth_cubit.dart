import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerNameController = TextEditingController();
}
