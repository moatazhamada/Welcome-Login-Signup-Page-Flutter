import 'package:flutter/material.dart';
import 'package:next/Screens/Signup/components/background.dart';
import 'package:next/components/rounded_button.dart';
import 'package:next/components/rounded_input_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.08),
            Image.asset(
              "assets/images/logo.jpeg",
              height: size.height * 0.20,
            ),
            RoundedInputField(
              hintText: "Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Phone",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "E-mail",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Address",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Content",
              minLines: 8,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Send a message",
              press: () {},
            ),
            RoundedButton(
              text: "Call Us",
              press: () {},
            ),
            SizedBox(height: size.height * 0.06),
          ],
        ),
      ),
    );
  }
}
