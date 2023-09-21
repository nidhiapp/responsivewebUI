import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/Widgets/appatore_googlestore.dart';
import 'package:responsive_web_asssignment/backgrounds/dottedbg.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';
import 'package:screen_type_layout/screen_type_layout.dart';

class DownloadAppwidget extends StatelessWidget {
  const DownloadAppwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobiledownloadapp(),
      desktop: desktopdownloadapp(),
      tablet: tabletdownloadapp(),
    );
  }

  static Widget mobiledownloadapp() {
    return Container(
      // height: h! * 0.6,
      color: const Color.fromARGB(245, 7, 99, 198),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 35),
          child: Image.asset(AppImages.downloadapppersonimg),
        ),
        const Text(
          "Download our App from",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 25),
        ),
        const Stores()
      ]),
    );
  }

  //fordesktop

  static Widget desktopdownloadapp() {
    return Stack(children: [
      Container(
        color: const Color.fromARGB(245, 7, 99, 198),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Download our App from",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Stores(),
            ],
          ),
          SizedBox(
            width: w! * 0.2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 35),
            child: Image.asset(
              AppImages.downloadapppersonimg,
              height: h! * 0.40,
              width: w! * 0.40,
            ),
          ),
        ]),
      ),
      const Dottedimg()
    ]);
  }

  static tabletdownloadapp() {
    // height: h! * 0.6,
    return Container(
      // height: h! * 0.6,
      color: const Color.fromARGB(245, 7, 99, 198),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 35),
          child: Image.asset(AppImages.downloadapppersonimg),
        ),
        const Text(
          "Download our App from",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 25),
        ),
        const Stores()
      ]),
    );
  }
}
