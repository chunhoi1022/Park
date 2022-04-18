import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:park/constants.dart';
import 'package:park/home_page/model/MenuItem.dart';
import 'package:park/settings/setting_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Text(
                  'Mandy Tse',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              // ...MenuItems.all.map(buildMenuItem).toList(),
              ListTile(
                minLeadingWidth: 20,
                leading: Icon(Icons.payment),
                title: Text(
                  'Payment Methods',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "payment_methods");
                },
              ),
              ListTile(
                minLeadingWidth: 20,
                leading: Icon(Icons.history),
                title: Text(
                  'Parking History',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "payment_history");
                },
              ),
              ListTile(
                minLeadingWidth: 20,
                leading: Icon(Icons.history),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushNamed(context, SettingScreen.routeName);
                },
              ),
              Spacer(flex: 2),
              ListTile(
                minLeadingWidth: 20,
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      );
}

// Widget buildMenuItem(MenuItem item) => ListTile(
//       minLeadingWidth: 20,
//       leading: Icon(item.icon.icon),
//       title: Text(
//         item.title,
//         style: TextStyle(color: Colors.white),
//       ),
//       onTap: () {
//         navigatorKey.currentState.pushNamed('/setting');
//         // Navigator.pushNamed(tcontext, item.route);
//       },
//     );

class MenuItems {
  static const paymentMethods = MenuItem('Payment Methods',
      Icon(Icons.payment, color: Colors.white), "PaymentMethodsScreen");
  static const parkingHistory = MenuItem('Parking History',
      Icon(Icons.history, color: Colors.white), "ParkingHistoryScreen");
  static const logout = MenuItem(
      'Logout',
      Icon(
        Icons.logout,
        color: Colors.white,
      ),
      "LogoutScreen");
  static const settings = MenuItem(
      'Settings', Icon(Icons.settings, color: Colors.white), "/setting");

  static const all = <MenuItem>[paymentMethods, parkingHistory, settings];
}
