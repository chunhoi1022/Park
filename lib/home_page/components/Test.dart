import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:park/components/default_button.dart';
import 'package:park/constants.dart';
import 'package:park/forgot_password/forgot_password_screen.dart';
import 'package:park/sign_up/sign_up_page.dart';
import '../../size_config.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:park/location/carparks.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  static final CameraPosition home = CameraPosition(
    target: LatLng(22.35596855194703, 114.10288639434796),
    zoom: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: GoogleMap(
              myLocationButtonEnabled: false,
              initialCameraPosition: home,
              markers: {maritimeSquareCarPark, tsingYiEstateMultiStoreyCarPark},
            )),
        Positioned(top: 50, left: 20, child: menuButton()),
        Positioned(top: 100, left: 20, right: 20, child: SearchField())
      ],
    ));
  }
}

class menuButton extends StatelessWidget {
  const menuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        Icons.menu,
        color: Colors.blueGrey,
        size: 40,
      ),
      onTap: () => ZoomDrawer.of(context)!.toggle(),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your location or car park",
              suffixIcon: Icon(Icons.search),
              contentPadding:
                  const EdgeInsets.only(left: 20, bottom: 5, right: 5),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white)))),
    );
  }
}
