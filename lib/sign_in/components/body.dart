import 'package:flutter/material.dart';
import 'package:park/components/default_button.dart';
import 'package:park/constants.dart';
import 'package:park/forgot_password/forgot_password_screen.dart';

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
              decoration: const InputDecoration(
                  labelText: 'Password',
                  focusColor: primaryColor,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor))),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Navigator.popAndPushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: const TextButton(
                      onPressed: null,
                      child: Text('Forgot Password',
                          style: TextStyle(color: primaryColor))),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 25.00, bottom: 20.00),
              child: DefaultButton(text: 'Login'),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('or'),
              TextButton(
                  onPressed: null,
                  child: Text(
                    'Signup',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: getProportionateScreenWidth(16)),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}
