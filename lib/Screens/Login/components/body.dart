import 'package:flutter/material.dart';
import 'package:next/Screens/CallUs/call_us_screen.dart';
import 'package:next/Screens/Login/components/background.dart';
import 'package:next/Screens/Signup/signup_screen.dart';
import 'package:next/components/forgot_password.dart';
import 'package:next/components/rounded_button.dart';
import 'package:next/components/rounded_input_field.dart';
import 'package:next/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/logo.jpeg",
              height: size.height * 0.20,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Phone",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CallUsScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.06),
            ForgotPassword(
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
          ],
        ),
      ),
    );
  }
}
