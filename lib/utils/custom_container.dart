import 'package:flutter/material.dart';
import 'package:responsive_web_asssignment/utils/Appcolors/colors.dart';
import 'package:responsive_web_asssignment/utils/Appimages/images.dart';
import 'package:responsive_web_asssignment/utils/constants.dart';

class Customwrapcontainer extends StatefulWidget {
  Customwrapcontainer(
      {super.key,
      this.btext = '',
      this.imagepath = '',
      this.ntext = '',
      this.imgcolor = Colors.white,
      this.btextcolor = AppColors.whiteTextColor,
      this.ntextcolor = AppColors.whiteTextColor,
      this.concolor = AppColors.whiteTextColor});
  String imagepath;
  String btext;
  String ntext;
  Color concolor;
  Color btextcolor;
  Color ntextcolor;
  Color imgcolor;

  @override
  State<Customwrapcontainer> createState() => _CustomwrapcontainerState();
}

class _CustomwrapcontainerState extends State<Customwrapcontainer> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
            color: _isHover ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: _isHover
                      ? Colors.white24
                      : AppColors.backgroundThemeColor,
                ),
                child: Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      widget.imagepath,
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Text(
                widget.btext,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: _isHover
                        ? AppColors.whiteTextColor
                        : AppColors.blackTextColor),
              ),
            ),
            Text(
              widget.ntext,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: _isHover
                      ? AppColors.whiteTextColor
                      : AppColors.blackTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
