import 'package:flutter/widgets.dart';
import 'package:park/complete_profile/complete_profile_screen.dart';
import 'package:park/forgot_password/forgot_password_screen.dart';
import 'package:park/settings/setting_screen.dart';
import 'package:park/sign_in/sign_in_screen.dart';
import 'package:park/sign_up/sign_up_page.dart';
import 'package:park/home_page/home_page.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SettingScreen.routeName: (context) => SettingScreen()
};
