import 'package:flutter/material.dart';
import 'package:next/Screens/Login/login_screen.dart';
import 'package:next/Screens/Signup/signup_screen.dart';
import 'package:next/Screens/Welcome/components/background.dart';
import 'package:next/components/already_have_an_account_acheck.dart';
import 'package:next/components/rounded_button.dart';
import 'package:next/components/rounded_button_with_image.dart';
import 'package:next/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/images/logo_with_text.png",
              height: size.height * 0.25,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Continue Without Login",
              color: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButtonWithIcon(
              text: "Login with Facebook",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              textColor: Colors.black,
              color: kPrimaryLightColor,
              iconSrc: "assets/icons/facebook.svg",
            ),
            RoundedButton(
              text: "LOG IN",
              color: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 0.0),
              child: AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
