import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:park/components/default_button.dart';
import 'package:park/constants.dart';
import 'package:park/forgot_password/forgot_password_screen.dart';
import 'package:park/sign_up/sign_up_page.dart';
import 'package:park/home_page/home_page.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  static const keyLanguage = 'key-language';
  static const keyDarkMode = 'key-darkmode';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          DropDownSettingsTile(
            title: "Settings",
            settingKey: keyLanguage,
            selected: 1,
            values: const <int, String>{
              1: 'English',
              2: "Tranditional Chinese"
            },
          ),
          SwitchSettingsTile(
            title: 'Dark Mode',
            settingKey: keyDarkMode,
            leading: Icon(
              Icons.dark_mode,
              color: primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
