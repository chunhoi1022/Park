import 'package:flutter/material.dart';

const MaterialColor purple = MaterialColor(
  0xff613EEA, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
  <int, Color>{
    50: Color(0xff5738d3), //10%
    100: Color(0xff4e32bb), //20%
    200: Color(0xff442ba4), //30%
    300: Color(0xff3a258c), //40%
    400: Color(0xff311f75), //50%
    500: Color(0xff27195e), //60%
    600: Color(0xff1d1346), //70%
    700: Color(0xff130c2f), //80%
    800: Color(0xff0a0617), //90%
    900: Color(0xff000000), //100%
  },
);

AppBarTheme appBarTheme() {
  return AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
      iconTheme: IconThemeData(color: Colors.black));
}
