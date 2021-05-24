import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:next/constants.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String text;
  final Function press;
  final String iconSrc;
  final Color color, textColor;
  const RoundedButtonWithIcon({
    Key key,
    this.text,
    this.press,
    this.iconSrc,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: RaisedButton.icon(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          label:Text(
            text,
            style: TextStyle(color: textColor),
          ),
          icon: SvgPicture.asset(
            iconSrc,
            height: 20,
            width: 20,
          ),
          onPressed: press,
        ),
      ),
    );
  }
}
