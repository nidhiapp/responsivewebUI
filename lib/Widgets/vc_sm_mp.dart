import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/Apptexts/texts.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

import '../utils/custom_container.dart';
import '../utils/custom_wrap_containers_mob_tab.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktopVcsmmp()
        : (w! > 450)
            ? tabletVcsmmp()
            : mobileVcsmmp();
  }

  Widget desktopVcsmmp() {
    return Wrap(
      spacing: 1,
      runSpacing: 1,
      runAlignment: WrapAlignment.spaceEvenly,
      children: [
        Customwrapcontainer(
          imagepath: AppImages.iconVisitingCard,
          btext: AppTexts.visitingCard,
          ntext: AppTexts.shareYourVisiting,
        ),
        Customwrapcontainer(
          imagepath: AppImages.iconLink,
          btext: AppTexts.shareMedia,
          ntext: AppTexts.shareYourFavourite,
        ),
        Customwrapcontainer(
          imagepath: AppImages.iconVisitingCard,
          btext: AppTexts.visitingCard,
          ntext: AppTexts.shareYourVisiting,
        ),
      ],
    );
  }

  Widget mobileVcsmmp() {
    return Wrap(
      children: [
        // runAlignment: WrapAlignment.spaceEvenly,

        OnTapMobTab(
          concolor: isHover ? Colors.blue : Colors.green,
          imagepath: AppImages.iconVisitingCard,
          btext: AppTexts.visitingCard,
          ntext: AppTexts.shareYourVisiting,
        ),

        OnTapMobTab(
          imagepath: AppImages.iconLink,
          btext: AppTexts.shareMedia,
          ntext: AppTexts.shareYourFavourite,
        ),
        OnTapMobTab(
          imagepath: AppImages.iconVisitingCard,
          btext: AppTexts.visitingCard,
          ntext: AppTexts.shareYourVisiting,
        ),
      ],
    );
  }

  Widget tabletVcsmmp() {
    return Wrap(
      children: [
        // runAlignment: WrapAlignment.spaceEvenly,

        OnTapMobTab(
          imagepath: AppImages.iconVisitingCard,
          btext: AppTexts.visitingCard,
          ntext: AppTexts.shareYourVisiting,
        ),

        OnTapMobTab(
          imagepath: AppImages.iconLink,
          btext: AppTexts.shareMedia,
          ntext: AppTexts.shareYourFavourite,
        ),
        OnTapMobTab(
          imagepath: AppImages.iconVisitingCard,
          btext: AppTexts.visitingCard,
          ntext: AppTexts.shareYourVisiting,
        ),
      ],
    );
  }
}
