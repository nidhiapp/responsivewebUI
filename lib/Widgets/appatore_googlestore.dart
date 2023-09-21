import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

class Stores extends StatelessWidget {
  const Stores({super.key});

  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktopStores()
        : (w! > 450)
            ? tabletStores()
            : mobileStores();
  }

  Widget desktopStores() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.appstoreimgs,
          height: 100,
          width: 180,
        ),
        const SizedBox(width: 20),
        Image.asset(
          AppImages.playstoreimg,
          height: 100,
          width: 180,
        )
      ],
    );
  }

  Widget tabletStores() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.appstoreimgs,
          height: 90,
          width: 160,
        ),
        Image.asset(
          AppImages.playstoreimg,
          height: 90,
          width: 160,
        )
      ],
    );
  }

  Widget mobileStores() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.appstoreimgs,
          height: h! * 0.07,
          width: w! * 0.35,
        ),
        SizedBox(
          width: w! * 0.05,
        ),
        Image.asset(
          AppImages.playstoreimg,
          height: h! * 0.07,
          width: w! * 0.35,
        )
      ],
    );
  }
}
