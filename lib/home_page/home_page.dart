import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:park/constants.dart';
import 'package:park/home_page/components/test.dart';
import '../size_config.dart';
import 'components/MenuScreen.dart';
import 'components/body.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_page";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ZoomDrawer(
        // style: DrawerStyle.style4,
        menuScreen: MenuScreen(),
        mainScreen: Test(),
        borderRadius: 30,
        showShadow: true,
        menuBackgroundColor: primaryColor,
      );
}
