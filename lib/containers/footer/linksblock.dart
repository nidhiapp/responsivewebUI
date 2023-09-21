import 'package:flutter/material.dart';

class Linkblock extends StatelessWidget {
  const Linkblock({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: const [
          TextSpan(
              text: "Link",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          TextSpan(
              text: "\nPrivacy Policy",
              style: TextStyle(
                  color: Colors.white,
                  height: 2.5,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          TextSpan(
              text: "\nTerms & Conditions",
              style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
        ]));
  }
}
