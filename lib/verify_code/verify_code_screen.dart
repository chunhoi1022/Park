import 'package:flutter/material.dart';
import 'package:park/size_config.dart';

import 'components/body.dart';

class VerifyCodeScreen extends StatelessWidget {
  static String routeName = "/verifyCode";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("SMS Verification"),
      ),
      body: Body(),
    );
  }
}