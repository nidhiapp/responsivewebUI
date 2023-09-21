import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

class Dottedimg extends StatelessWidget {
  const Dottedimg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.circularbg,
              height: h! * 0.17,
              width: w! * 0.17,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              AppImages.circularbg,
              height: h! * 0.17,
              width: w! * 0.17,
            )
          ],
        )
      ],
    );
  }
}
