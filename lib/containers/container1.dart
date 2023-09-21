import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/Widgets/appatore_googlestore.dart';
import 'package:responsive_web_asssignment/Widgets/login_page.dart';
import 'package:responsive_web_asssignment/Widgets/logotext.dart';
import 'package:responsive_web_asssignment/Widgets/myb_plus_text.dart';
import 'package:responsive_web_asssignment/utils/Appcolors/colors.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/Apptexts/texts.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

import '../backgrounds/top_left_right_rectangles.dart';

//logotext+mybtext+loginpage+
class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktopContainer1()
        : (w! > 450)
            ? tabletContainer1()
            : mobileMYBtext();
  }

  Widget desktopContainer1() {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      padding: const EdgeInsets.only(top: 50,),
      child: const Stack(
        children: [
          Top2Rectangles(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogopluslogoText(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [MYBtext(), SizedBox(height: 10), Stores()],
                  ),
                  Loginpage()
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  AppTexts.infoprofile,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppTexts.what + " ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppTexts.provide,
                    style: TextStyle(
                      color: AppColors.blueTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " " + AppTexts.you,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget tabletContainer1() {
    return Container(
        margin: const EdgeInsets.only(bottom: 40),
        child: const Stack(
          children: [
            Top2Rectangles(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogopluslogoText(),
                SizedBox(
                  height: 10,
                ),
                MYBtext(),
                Padding(
                  padding:
                      EdgeInsets.only(top: 30.0, bottom: 30, left: 30, right: 30),
                  child: Loginpage(),
                ),
                Stores(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  AppTexts.infoprofile,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppTexts.what + " ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      AppTexts.provide,
                      style: TextStyle(
                        color: AppColors.blueTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " " + AppTexts.you,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }

  Widget mobileMYBtext() {
    return Container(
        margin: const EdgeInsets.only(bottom: 40),
        child: const Stack(
          children: [
            Top2Rectangles(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogopluslogoText(),
                SizedBox(
                  height: 10,
                ),
                MYBtext(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 30),
                  child: Loginpage(),
                ),
                Stores(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  AppTexts.infoprofile,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppTexts.what + " ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      AppTexts.provide,
                      style: TextStyle(
                        color: AppColors.blueTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " " + AppTexts.you,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
