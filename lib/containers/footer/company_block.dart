import 'package:flutter/material.dart';

class Companyblock extends StatelessWidget {
  const Companyblock({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: const [
          TextSpan(
              text: "Company",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          TextSpan(
              text: "\nAbout Us",
              style: TextStyle(
                  color: Colors.white,
                  height: 3,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)),
          TextSpan(
              text: "\nContact Us",
              style: TextStyle(
                  color: Colors.white,
                  height: 2,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)),
        ]));
  }
}
