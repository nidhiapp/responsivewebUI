import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/Widgets/download_app.dart';
import 'package:responsive_web_asssignment/Widgets/try_infoprofile_forfree.dart';
import 'package:responsive_web_asssignment/backgrounds/circular_rectangular.dart';
import 'package:responsive_web_asssignment/backgrounds/dottedbg.dart';
import 'package:responsive_web_asssignment/containers/footer/footer_block1.dart';
import 'package:responsive_web_asssignment/utils/Appcolors/colors.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/Apptexts/texts.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';
import 'package:screen_type_layout/screen_type_layout.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktopZigZagplusDA()
        : (w! <= 450)
            ? mobileZigZagplusDA()
            : tabletZigZagplusDA();
  }

  Widget desktopZigZagplusDA() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90.0, top: 50, bottom: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: w! * 0.29,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 5,
                        children: [
                          Text(
                            AppTexts.youCanCreate + " ",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(AppTexts.multipleProfiles + " ",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blueTextColor,
                              )),
                          Text(
                            AppTexts.forYourAccount,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                height: 1.25),
                          )
                        ],
                      ),
                      //    SizedBox(height:15 ,),
                      Text(
                        AppTexts.domain,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyTextColor,
                            height: 1.5,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  AppImages.runPng,
                  height: h! * 0.6,
                  width: w! * 0.6,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80, top: 50, bottom: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    AppImages.bulbimg,
                    height: h! * 0.63,
                    width: w! * 0.62,
                  ),
                ),
                // SizedBox(width: 20,),
                SizedBox(
                  width: w! * 0.29,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            AppTexts.youCanCreate + " ",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                height: 2),
                          ),
                          Text(AppTexts.multipleProfiles + " ",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blueTextColor,
                                  height: 2)),
                          Text(
                            AppTexts.forYourAccount,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                height: 1.25),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        AppTexts.domain,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyTextColor,
                            height: 1.5,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(children: [
            DownloadAppwidget.desktopdownloadapp(),
            const Dottedimg()
          ]),
          Stack(alignment: Alignment.center, children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AppImages.worldimg,
                        height: h! * 0.53,
                        width: w! * 0.53,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: w! * 0.29,
                        child: const Stack(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                children: [
                                  Text(
                                    AppTexts.youCanCreate + " ",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        height: 2),
                                  ),
                                  Text(AppTexts.multipleProfiles + " ",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.blueTextColor,
                                          height: 2)),
                                  Text(
                                    AppTexts.forYourAccount,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        height: 1.25),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                AppTexts.domain,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.greyTextColor,
                                    height: 1.5,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ],
                  ),
                  const ContainerFooter()
                ],
              ),
            ),
            Positioned(bottom: h! * 0.35, child: const TryInfoprofile())
          ]),
        ],
      ),
    );
  }

//for mobile

  Widget mobileZigZagplusDA() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.runPng,
          height: 300,
          width: 300,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Wrap(
                children: [
                  Text(
                    AppTexts.youCanCreate + " ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20, height: 1),
                  ),
                  Text(
                    AppTexts.multipleProfiles + " ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.blueTextColor,
                        height: 1),
                  ),
                  Text(
                    AppTexts.forYourAccount,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20, height: 2),
                  )
                ],
              ),
              SizedBox(
                  width: w! * 0.75,
                  child: const Text(
                    AppTexts.domain,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyTextColor,
                        fontWeight: FontWeight.w500,
                        height: 1.5),
                  )),
            ],
          ),
        ),
        Image.asset(
          AppImages.bulbimg,
          height: 300,
          width: 300,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: w! * 0.75,
              child: const Wrap(
                children: [
                  Text(
                    AppTexts.be + " ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20, height: 2),
                  ),
                  Text(
                    AppTexts.creative + " ",
                    style: TextStyle(
                        color: AppColors.blueTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 2),
                  ),
                  Text(
                    AppTexts.inYourOwnWay + " ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20, height: 1.5),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h! * 0.05,
            ),
            SizedBox(
                width: w! * 0.75,
                child: const Text(AppTexts.hereWeProduce,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyTextColor,
                        fontWeight: FontWeight.w500,
                        height: 1.5))),
          ],
        ),
        SizedBox(
          height: h! * 0.05,
        ),
        DownloadAppwidget.mobiledownloadapp(),
        Stack(alignment: Alignment.topCenter, children: [
          Container(
            child: Column(
              children: [
                Image.asset(
                  AppImages.worldimg,
                  height: 300,
                  width: 300,
                ),
                Wrap(
                  children: [
                    SizedBox(
                        width: w! * 0.75,
                        child: const Text(
                          AppTexts.makeFriendsByBuilding,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              height: 1.5),
                        )),
                    //  Text(AppTexts.multipleProfiles),
                    //  Text(AppTexts.forYourAccount)
                  ],
                ),
                SizedBox(
                  width: w! * 0.75,
                  child: const Text(AppTexts.theBestDomain,
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greyTextColor,
                          fontWeight: FontWeight.w500,
                          height: 1.5)),
                ),
                SizedBox(height: h! * 0.3),
                const ContainerFooter(),
              ],
            ),
          ),
          Positioned(bottom: h! * 1.65, child: const TryInfoprofile()),
        ]),
      ],
    );
  }

  Widget tabletZigZagplusDA() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.runPng,
          height: 300,
          width: 300,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Wrap(
                children: [
                  Text(
                    AppTexts.youCanCreate + " ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20, height: 1),
                  ),
                  Text(
                    AppTexts.multipleProfiles + " ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.blueTextColor,
                        height: 1),
                  ),
                  Text(
                    AppTexts.forYourAccount,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20, height: 2),
                  )
                ],
              ),
              SizedBox(
                  width: w! * 0.75,
                  child: const Text(
                    AppTexts.domain,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyTextColor,
                        fontWeight: FontWeight.w500,
                        height: 1.5),
                  )),
            ],
          ),
        ),
        Image.asset(
          AppImages.bulbimg,
          height: h! * 0.3,
          width: w! * 0.3,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: w! * 0.75,
              child: const Wrap(
                children: [
                  Text(
                    AppTexts.be + " ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20, height: 2),
                  ),
                  Text(
                    AppTexts.creative + " ",
                    style: TextStyle(
                        color: AppColors.blueTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 2),
                  ),
                  Text(
                    AppTexts.inYourOwnWay + " ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20, height: 1.5),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h! * 0.05,
            ),
            SizedBox(
                width: w! * 0.75,
                child: const Text(AppTexts.hereWeProduce,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greyTextColor,
                        fontWeight: FontWeight.w500,
                        height: 1.5))),
          ],
        ),
        SizedBox(
          height: h! * 0.05,
        ),
        DownloadAppwidget.tabletdownloadapp(),
        Stack(alignment: Alignment.topCenter, children: [
          Container(
            child: Column(
              children: [
                Image.asset(
                  AppImages.worldimg,
                  height: 300,
                  width: 300,
                ),
                Wrap(
                  children: [
                    SizedBox(
                        width: w! * 0.75,
                        child: const Text(
                          AppTexts.makeFriendsByBuilding,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              height: 1.5),
                        )),
                    //  Text(AppTexts.multipleProfiles),
                    //  Text(AppTexts.forYourAccount)
                  ],
                ),
                SizedBox(
                  width: w! * 0.75,
                  child: const Text(AppTexts.theBestDomain,
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greyTextColor,
                          fontWeight: FontWeight.w500,
                          height: 1.5)),
                ),
                SizedBox(height: h! * 0.3),
                const ContainerFooter(),
              ],
            ),
          ),
          Positioned(bottom: h! * 1.73, child: const TryInfoprofile()),
        ]),
      ],
    );
  }
}
