import 'package:flutter/material.dart';
import 'package:park/components/custom_surfix_icon.dart';
import 'package:park/components/default_button.dart';
import 'package:park/components/social_card.dart';
import 'package:park/constants.dart';
import 'package:park/forgot_password/forgot_password_screen.dart';
import 'package:park/sign_up/sign_up_page.dart';
import 'package:park/sign_in/components/sign_in_form.dart';
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
            SignForm(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text('or'),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
                child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: getProportionateScreenWidth(16)),
                    )),
              )
            ]),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
              ],
            ),
            Text('or Login with Google / Facebook',style: Theme.of(context).textTheme.caption)
          ],
        ),
      ),
    );
  }
}
