import 'package:flutter/material.dart';
import 'package:park/size_config.dart';
import 'package:park/theme.dart';
import 'package:park/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(appBar: AppBar(title: Text('SignUp')), body: Body());
  }
}
