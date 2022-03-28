import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorrence_app/app/data/globals.dart';
import 'package:lorrence_app/app/data/screen_size_config.dart';
import 'package:lorrence_app/app/data/theme/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    @required this.userName,
    this.userImage,
    @required this.onTap,
  });

  final String? userName;
  final String? userImage;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: SmallText,
                    fontFamily: 'SFProL',
                  ),
                ),
                userName! == ''
                    ? SizedBox()
                    : Text(
                        userName!,
                        style: TextStyle(
                          fontSize: MediumText,
                          fontFamily: 'SFProM',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
              ],
            ),
            GestureDetector(
              onTap: onTap,
              child: CircleAvatar(
                radius: SizeConfig.screenWidth! * 0.05,
                backgroundColor: cardColor,
                backgroundImage:
                    AssetImage('assets/images/app_logo_splash.png'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
