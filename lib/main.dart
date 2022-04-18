import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:park/constants.dart';
import 'package:park/routes.dart';
import 'package:park/sign_in/sign_in_screen.dart';
import 'package:park/theme.dart';

void main() async {
  await Settings.init(cacheProvider: SharePreferenceCache());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: purple,
          fontFamily: "OpenSans",
          appBarTheme: appBarTheme()),
      // home: const SignInScreen(),
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}
