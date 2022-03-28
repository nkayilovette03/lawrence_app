// ignore_for_file: prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:lorrence_app/app/data/screen_size_config.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  ShimmerLoadingWidget({
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Color(0xFFEBEBEB),
      highlightColor: Color(0xFFb6b6b6),
      child: Padding(
        padding: EdgeInsets.all(
          5.0,
        ),
        child: Container(
          height: height == null ? SizeConfig.screenHeight! * 0.1 : height,
          width: width == null ? SizeConfig.screenWidth! * 0.3 : width,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
