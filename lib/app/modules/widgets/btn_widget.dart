import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lorrence_app/app/data/globals.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({
    required this.labelText,
    this.btnColor,
    required this.onPressed,
    required this.showIcon,
    this.icon,
    this.labelColor,
  });

  final String labelText;
  final MaterialStateProperty<Color>? btnColor;
  final void Function() onPressed;
  final bool showIcon;
  final IconData? icon;
  final MaterialStateProperty<Color>? labelColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      // style: ElevatedButton.styleFrom(
      //   primary: Colors.blue,
      //   padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 8),
      //   textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      // ),

      style: ButtonStyle(
        foregroundColor: labelColor,
        backgroundColor: btnColor,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          children: [
            showIcon
                ? FaIcon(
                    icon,
                    size: MediumText,
                  )
                : SizedBox(),
            Text(
              labelText,
              style: TextStyle(
                fontSize: SmallText,
                fontFamily: 'SFProL',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
