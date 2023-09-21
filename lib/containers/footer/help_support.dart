import 'package:flutter/material.dart';

class Helpsupportblock extends StatelessWidget {
  const Helpsupportblock({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: const [
          TextSpan(
              text: "Help & Support",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          TextSpan(
              text: "\nGetting Started FAQ",
              style: TextStyle(
                  color: Colors.white,
                  height: 2.5,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)),
        ]));
  }
}
