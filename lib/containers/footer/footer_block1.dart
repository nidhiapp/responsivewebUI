import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';
import 'package:screen_type_layout/screen_type_layout.dart';

import 'company_block.dart';
import 'featureblock.dart';
import 'help_support.dart';
import 'linksblock.dart';

class ContainerFooter extends StatelessWidget {
  const ContainerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktopFooter()
        : (w! > 450)
            ? tabletFooter()
            : mobileFooter();
  }

  Widget mobileFooter() {
    return Container(
      padding: const EdgeInsets.all(30),
      color: const Color.fromARGB(252, 7, 99, 198),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Image.asset(
              AppImages.appLogo,
            ),
          ),

          const Text(
            "Not a  normal app, its unique!\nServices are provided everywhere.",
            style: TextStyle(
                fontSize: 20,
                height: 2,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
          SizedBox(
            height: 90,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  AppImages.fbimg,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  AppImages.linkimg,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  AppImages.googly,
                  height: 50,
                  width: 50,
                )
              ],
            ),
          ),

          const Featureblock(),
          const SizedBox(
            height: 40,
          ),
          const Linkblock(),
          const SizedBox(
            height: 40,
          ),
          const Companyblock(),
          const SizedBox(height: 40),
          const Helpsupportblock(),
          // SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 10),
            height: 0.4,
            width: 500,
            color: const Color.fromARGB(255, 214, 213, 213),
          ),
          const Text(
            '© Copyright Infoprofile       All rights reserved.',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget desktopFooter() {
    return Container(
      color: const Color.fromARGB(255, 14, 126, 218),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Image.asset(
                      AppImages.appLogo,
                      height: h! * 0.15,
                      width: w! * 0.15,
                    ),
                  ),

                  const Text(
                    "Not a  normal app, its unique!\nServices are provided everywhere.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppImages.fbimg,
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          AppImages.linkimg,
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          AppImages.googly,
                          height: 40,
                          width: 40,
                        )
                      ],
                    ),
                  ),
                  //   SizedBox(height: 40,),
                  // Container(
                  //   margin: EdgeInsets.only(top: 30, bottom: 10),
                  //   height: 0.4,
                  //   width: 500,
                  //   color: Color.fromARGB(255, 214, 213, 213),
                  // ),
                  // Text(
                  //   '© Copyright Infoprofile       All rights reserved.',
                  //   style: TextStyle(
                  //       fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
                  // )
                ]),

                const Featureblock(),
                Container(
                  height: 150,
                  width: 0.4,
                  color: const Color.fromARGB(255, 211, 218, 224),
                ),
                const Linkblock(),
                // SizedBox(
                //   height: 40,
                // ),
                Container(
                  height: 150,
                  width: 0.4,
                  color: const Color.fromARGB(255, 211, 218, 224),
                ),
                const Companyblock(),
                Container(
                  height: 150,
                  width: 0.4,
                  color: const Color.fromARGB(255, 211, 218, 224),
                ),
                //  SizedBox(height: 40),
                const Helpsupportblock(),
                // SizedBox(height: 40,),
                // Container(
                //   margin: EdgeInsets.only(top: 30, bottom: 10),
                //   height: 0.4,
                //   width: 500,
                //   color: Color.fromARGB(255, 214, 213, 213),
                // ),
                // Text(
                //   '© Copyright Infoprofile       All rights reserved.',
                //   style: TextStyle(
                //       fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
                // )
              ],
            ),
          ),
          // SizedBox(height: 40,),
          Container(
            //  margin: EdgeInsets.only(top: 0.0, bottom: 0),
            height: 0.4,
            width: w! * 0.9,
            color: const Color.fromARGB(255, 248, 243, 243),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '© Copyright Infoprofile',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(
                width: w! * 0.7,
              ),
              const Text(
                'All rights reserved.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  tabletFooter() {
    return Container(
      padding: const EdgeInsets.all(30),
      color: const Color.fromARGB(252, 7, 99, 198),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Image.asset(
              AppImages.appLogo,
            ),
          ),

          const Text(
            "Not a  normal app, its unique!\nServices are provided everywhere.",
            style: TextStyle(
                fontSize: 20,
                height: 2,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
          SizedBox(
            height: 90,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  AppImages.fbimg,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  AppImages.linkimg,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  AppImages.googly,
                  height: 50,
                  width: 50,
                )
              ],
            ),
          ),

          const Featureblock(),
          const SizedBox(
            height: 40,
          ),
          const Linkblock(),
          const SizedBox(
            height: 40,
          ),
          const Companyblock(),
          const SizedBox(height: 40),
          const Helpsupportblock(),
          // SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 10),
            height: 0.4,
            width: 500,
            color: const Color.fromARGB(255, 214, 213, 213),
          ),
          const Text(
            '© Copyright Infoprofile       All rights reserved.',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          )
        ],
      ),
    );
  }
}
