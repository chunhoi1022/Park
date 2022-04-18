import 'package:flutter/material.dart';
import 'package:park/size_config.dart';
import 'package:park/theme.dart';
import 'package:park/settings/components/body.dart';

class SettingScreen extends StatelessWidget {
  
  static String routeName = "/setting";
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(appBar: AppBar(title: Text('Setting')), body: Body());
  }
}
