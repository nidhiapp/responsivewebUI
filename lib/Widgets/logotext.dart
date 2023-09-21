import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';
import 'package:screen_type_layout/screen_type_layout.dart';

import '../utils/Appimages/images.dart';

class LogopluslogoText extends StatefulWidget {
  const LogopluslogoText({super.key});

  @override
  State<LogopluslogoText> createState() => _LogopluslogoTextState();
}

class _LogopluslogoTextState extends State<LogopluslogoText> {
  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktopLogoText()
        : (w! <= 450)
            ? mobileLogoText()
            : tabletLogoText();
  }

  Widget mobileLogoText() {
    return Column(
      children: [
        Image.asset(
          AppImages.infoProfilelogo,
          height: 70,
          width: 250,
        ),
      ],
    );
  }

  Widget desktopLogoText() {
    return Column(
      children: [
        Image.asset(
          AppImages.infoProfilelogo,
          height: 80,
          width: 300,
        ),
      ],
    );
  }

  Widget tabletLogoText() {
    return Column(
      children: [
        Image.asset(
          AppImages.infoProfilelogo,
          height: 70,
          width: 250,
        ),
      ],
    );
  }
}
