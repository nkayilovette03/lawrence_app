import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lorrence_app/app/data/screen_size_config.dart';
import 'package:lorrence_app/app/data/theme/colors.dart';
import 'package:lorrence_app/app/modules/bottomNavBar/controllers/theme_controller.dart';
import 'package:lorrence_app/app/modules/bottomNavBar/views/widgets/bottombar_item.dart';

import '../controllers/bottom_nav_bar_controller.dart';

class BottomNavBarView extends GetView<BottomNavBarController> {
  final List barItems = [
    {
      "icon": Icons.home_outlined,
      "active_icon": Icons.home_rounded,
      // "page": HomePage(),
      "title": ""
    },
    {
      "icon": Icons.search_outlined,
      "active_icon": Icons.search,
      // "page": ExplorePage(),
      "title": ""
    },
    {
      "icon": Icons.grid_view_outlined,
      "active_icon": Icons.grid_view_rounded,
      // "page": ExplorePage(),
      "title": ""
    },
    {
      "icon": Icons.favorite_border,
      "active_icon": Icons.favorite_outlined,
      // "page": HomePage(),
      "title": ""
    },
    {
      "icon": Icons.settings_outlined,
      "active_icon": Icons.settings_rounded,
      // "page": HomePage(),
      "title": ""
    },
  ];

  @override
  Widget build(BuildContext context) {
    ThemeController themeController =
        Get.put<ThemeController>(ThemeController());
    BottomNavBarController controller =
        Get.put<BottomNavBarController>(BottomNavBarController());
    SizeConfig().init(context); // initializing size config
    return Obx(
      () => AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor:
              themeController.isDarkModeOn == true ? dark : appBgColor,
          statusBarIconBrightness: themeController.isDarkModeOn == true
              ? Brightness.light
              : Brightness.dark,
          statusBarBrightness: themeController.isDarkModeOn == true
              ? Brightness.light
              : Brightness.dark,
        ),
        child: Scaffold(
          body: Container(
            child: controller.currentPage,
          ),
          floatingActionButton: getBottomBar(themeController),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
        ),
      ),
    );
  }

  Widget getBottomBar(ThemeController themeController) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 0, 15, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20)
        // ),
        boxShadow: [
          BoxShadow(
            color: themeController.isDarkModeOn == true
                ? shadowColor.withOpacity(0.8)
                : Colors.white,
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List.generate(
          barItems.length,
          (index) => BottomBarItem(
            controller.activeTab == index
                ? barItems[index]["active_icon"]
                : barItems[index]["icon"],
            "",
            isActive: controller.activeTab == index,
            activeColor: primary,
            onTap: () {
              controller.changePage(index);
            },
          ),
        ),
      ),
    );
  }
}
