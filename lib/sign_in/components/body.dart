import 'package:flutter/material.dart';

import '../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 50.00, left: 60.00, bottom: 50),
              child: Image.asset('assets/logo.png'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email or phone number',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: null,
                    child: Text('Forgot Password',
                        style: TextStyle(color: Color(0xff613EEA))))),
            TextButton(
              onPressed: null,
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Colors.white,
                  backgroundColor: Color(0xff613EEA)),
              child: Text('Login', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
