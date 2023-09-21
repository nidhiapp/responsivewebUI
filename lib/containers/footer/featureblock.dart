import 'package:flutter/material.dart';

class Featureblock extends StatelessWidget {
  const Featureblock({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:
          TextSpan(style: DefaultTextStyle.of(context).style, children: const [
        TextSpan(
            text: "Features",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        TextSpan(
            text: "\nView Feeds",
            style: TextStyle(
                color: Colors.white,
                height: 2.5,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        TextSpan(
            text: "\nMake connections",
            style: TextStyle(
                color: Colors.white,
                height: 1.5,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        TextSpan(
            text: "\nCreate Companies",
            style: TextStyle(
                color: Colors.white,
                height: 1.5,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
        TextSpan(
            text: "\nMobile App",
            style: TextStyle(
                color: Colors.white,
                height: 1.5,
                fontSize: 15,
                fontWeight: FontWeight.w300)),
      ]),
    );
  }
}
