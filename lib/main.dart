import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/home_Page.dart';
import 'package:responsive_web_asssignment/utils/Appcolors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: AppColors.backgroundThemeColor2, body: HomePage()),
    );
  }
}
