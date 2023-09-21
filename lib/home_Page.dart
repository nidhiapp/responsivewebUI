import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/Widgets/login_page.dart';
import 'package:responsive_web_asssignment/Widgets/logotext.dart';
import 'package:responsive_web_asssignment/Widgets/myb_plus_text.dart';
import 'package:responsive_web_asssignment/Widgets/vc_sm_mp.dart';
import 'package:responsive_web_asssignment/backgrounds/top_left_right_rectangles.dart';
import 'package:responsive_web_asssignment/containers/container1.dart';
import 'package:responsive_web_asssignment/containers/footer/footer_block1.dart';
import 'package:responsive_web_asssignment/containers/zigzag.dart';

import 'package:responsive_web_asssignment/utils/constants.dart';
import 'package:screen_type_layout/screen_type_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        child: const Column(
          children: [
            Container1(),
            Container2(),
            Container3(),
            // ContainerFooter()

            //  MYBtext()
          ],
        ),
      ),
    );
  }
}
