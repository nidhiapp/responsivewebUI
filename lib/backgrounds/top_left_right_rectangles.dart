import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

import '../utils/Appimages/images.dart';

class Top2Rectangles extends StatelessWidget {
  const Top2Rectangles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Image.asset(
              AppImages.leftrectangleimg,
              height: 700,
            ),
          ),
          Flexible(
            child: Image.asset(
              AppImages.rightrectangleimg,
              height: 700,
            ),
          )
        ],
      ),
    );
  }
}
