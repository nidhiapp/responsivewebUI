import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appcolors/colors.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/Apptexts/texts.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return (w! > 960)
        ? desktopLoginPage()
        : (w! > 450)
            ? tabletLoginPage()
            : mobileLoginPage();
  }

  Widget mobileLoginPage() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      padding: const EdgeInsets.all(15),
      height: 600,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            AppTexts.login,
            style: TextStyle(
                color: AppColors.blueTextColor,
                fontWeight: FontWeight.w800,
                fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            AppTexts.enterUsername,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                hintText: AppTexts.usernameEmail,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.backgroundThemeColor,
                ),
                hintText: AppTexts.password,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 7,
          ),
          const Align(
              alignment: Alignment.centerRight,
              child: Text(AppTexts.forgetpass)),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 370,
            height: 50,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 205, 229),
                borderRadius: BorderRadius.circular(15)),
            child: const Center(
                child: Text(
              AppTexts.login,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteTextColor),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 60,
                  color: Colors.grey,
                ),
                const Text(
                  " OR ",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 1,
                  width: 60,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                AppTexts.loginWith,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Image.asset(
                  AppImages.fbimg,
                  height: 40,
                  width: 40,
                )),
                Expanded(
                    child:
                        Image.asset(AppImages.googly, height: 40, width: 40)),
                Expanded(
                    child:
                        Image.asset(AppImages.linkimg, height: 40, width: 40))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppTexts.dontHaveAccount,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppTexts.signUp,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blueTextColor,
                        decoration: TextDecoration.underline),
                  ))
            ],
          )
        ],
      ),
    );
  }

  //desktop login page
  Widget desktopLoginPage() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      padding: const EdgeInsets.all(15),
      height: 600,
      width: 480,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            AppTexts.login,
            style: TextStyle(
                color: AppColors.blueTextColor,
                fontWeight: FontWeight.w800,
                fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            AppTexts.enterUsername,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                hintText: AppTexts.usernameEmail,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.backgroundThemeColor,
                ),
                hintText: AppTexts.password,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 7,
          ),
          const Align(
              alignment: Alignment.centerRight,
              child: Text(AppTexts.forgetpass)),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 450,
            height: 60,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 205, 229),
                borderRadius: BorderRadius.circular(15)),
            child: const Center(
                child: Text(
              AppTexts.login,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteTextColor),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 90,
                  color: Colors.grey,
                ),
                const Text(
                  " OR ",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 1,
                  width: 90,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                AppTexts.loginWith,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Image.asset(
                  AppImages.fbimg,
                  height: 50,
                  width: 50,
                )),
                Expanded(
                    child:
                        Image.asset(AppImages.googly, height: 50, width: 50)),
                Expanded(
                    child:
                        Image.asset(AppImages.linkimg, height: 50, width: 50))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppTexts.dontHaveAccount,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppTexts.signUp,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.blueTextColor,
                        decoration: TextDecoration.underline),
                  ))
            ],
          )
        ],
      ),
    );
  }

  //tablet login page
  tabletLoginPage() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      padding: const EdgeInsets.all(15),
      height: 600,
      width: 480,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            AppTexts.login,
            style: TextStyle(
                color: AppColors.blueTextColor,
                fontWeight: FontWeight.w800,
                fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            AppTexts.enterUsername,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                hintText: AppTexts.usernameEmail,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.backgroundThemeColor,
                ),
                hintText: AppTexts.password,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 7,
          ),
          const Align(
              alignment: Alignment.centerRight,
              child: Text(AppTexts.forgetpass)),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 450,
            height: 60,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 205, 229),
                borderRadius: BorderRadius.circular(15)),
            child: const Center(
                child: Text(
              AppTexts.login,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteTextColor),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 90,
                  color: Colors.grey,
                ),
                const Text(
                  " OR ",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 1,
                  width: 90,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                AppTexts.loginWith,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Image.asset(
                  AppImages.fbimg,
                  height: 50,
                  width: 50,
                )),
                Expanded(
                    child:
                        Image.asset(AppImages.googly, height: 50, width: 50)),
                Expanded(
                    child:
                        Image.asset(AppImages.linkimg, height: 50, width: 50))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppTexts.dontHaveAccount,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppTexts.signUp,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.blueTextColor,
                        decoration: TextDecoration.underline),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
