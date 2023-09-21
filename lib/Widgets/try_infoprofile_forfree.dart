import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appcolors/colors.dart';
import 'package:responsive_web_asssignment/utils/Apptexts/texts.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

class TryInfoprofile extends StatelessWidget {
  const TryInfoprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktoptryInfo()
        : (w! > 450)
            ? tablettryInfo()
            : mobiletryInfo();
  }

  Widget desktoptryInfo() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      child: Container(
        padding: EdgeInsets.all(15),
        width: w! * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppTexts.tryInfoProfile,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: AppColors.blueTextColor),
                ),
                SizedBox(
                    child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          AppTexts.login,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          AppTexts.signUp,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ))
                  ],
                ))
              ],
            ),
            Row(
              children: [
                Icon(Icons.check),
                Text(AppTexts.multipleProfiles),
                SizedBox(
                  width: w! * 0.03,
                ),
                Icon(Icons.check),
                Text(AppTexts.creative),
                SizedBox(
                  width: w! * 0.03,
                ),
                Icon(Icons.check),
                Text(AppTexts.buildConnections),
                SizedBox(
                  width: w! * 0.03,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget tablettryInfo() {
    return Card(
      child: SizedBox(
        width: w! * 0.85,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.tryInfoProfile,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: AppColors.blueTextColor),
              ),
              Icon(Icons.check),
              Text(AppTexts.multipleProfiles),
              Icon(Icons.check),
              Text(AppTexts.creative),
              Icon(Icons.check),
              Text(AppTexts.buildConnections),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        AppTexts.login,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        AppTexts.signUp,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget mobiletryInfo() {
    return Card(
      child: SizedBox(
        width: w! * 0.8,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.tryInfoProfile,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: AppColors.blueTextColor),
              ),
              Row(
                children: [Icon(Icons.check), Text(AppTexts.multipleProfiles)],
              ),
              Row(
                children: [
                  Icon(Icons.check),
                  Text(AppTexts.creative),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check),
                  Text(AppTexts.buildConnections),
                ],
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        AppTexts.login,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        AppTexts.signUp,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
