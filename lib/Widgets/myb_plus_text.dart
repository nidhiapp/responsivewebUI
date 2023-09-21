import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appcolors/colors.dart';
import 'package:responsive_web_asssignment/utils/Apptexts/texts.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';
import 'package:screen_type_layout/screen_type_layout.dart';

class MYBtext extends StatelessWidget {
  const MYBtext({super.key});

  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktopMYBtext()
        : (w! > 450)
            ? tabletMYBtext()
            : mobileMYBtext();
    // return ScreenTypeLayout(
    //   mobile: mobileMYBtext(),
    //  tablet: tabletMYBtext(),
    //   desktop: desktopMYBtext(),
  }

  Widget mobileMYBtext() {
    return const Column(
      children: [
        Text(AppTexts.meetYourBest,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900)),
        Text(AppTexts.connections,
            style: TextStyle(
                color: AppColors.blueTextColor,
                fontSize: 35,
                fontWeight: FontWeight.w900)),
        SizedBox(
          height: 15,
        ),
        Text(
          AppTexts.buildFast,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }

  Widget tabletMYBtext() {
    return const Column(
      children: [
        Text(AppTexts.meetYourBest,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900)),
        Text(AppTexts.connections,
            style: TextStyle(
                color: AppColors.blueTextColor,
                fontSize: 50,
                fontWeight: FontWeight.w900)),
        SizedBox(
          height: 15,
        ),
        Text(
          AppTexts.buildFast,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }

  Widget desktopMYBtext() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.meetYourBest,
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
        ),
        Text(AppTexts.connections,
            style: TextStyle(
                color: AppColors.blueTextColor,
                fontSize: 50,
                fontWeight: FontWeight.w900)),
        SizedBox(
          height: 15,
        ),
        Text(
          AppTexts.buildFast,
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
