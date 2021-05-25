import 'package:flutter/material.dart';
import 'package:next/Screens/Login/login_screen.dart';
import 'package:next/Screens/Signup/components/background.dart';
import 'package:next/Screens/Signup/components/or_divider.dart';
import 'package:next/Screens/Signup/components/social_icon.dart';
import 'package:next/components/already_have_an_account_acheck.dart';
import 'package:next/components/rounded_button.dart';
import 'package:next/components/rounded_input_field.dart';
import 'package:next/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
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
            RoundedInputField(
              hintText: "Phone",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Login",
              press: () {},
            ),
            SizedBox(height: size.height * 0.06),
          ],
        ),
      ),
    );
  }
}
