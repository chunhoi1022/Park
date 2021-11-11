import 'package:flutter/widgets.dart';
import 'package:park/forgot_password/forgot_password_screen.dart';
import 'package:park/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
