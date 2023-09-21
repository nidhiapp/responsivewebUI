import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

class Circularrectangular extends StatelessWidget {
  const Circularrectangular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.multipleprofileimg,
              height: h! * 0.5,
              width: w! * 0.5,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              AppImages.rectangularlayerimg,
              height: h! * 0.5,
              width: w! * 0.5,
            ),
          ],
        ),
      ],
    );
  }
}
