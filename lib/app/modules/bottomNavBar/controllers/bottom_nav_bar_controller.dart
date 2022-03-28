import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorrence_app/app/modules/home/views/home_view.dart';

class BottomNavBarController extends GetxController {
  final activeTab = 0.obs;

  Rx<ThemeMode> isThemeModeRx = ThemeMode.system.obs;

  List<Widget> pages = [
    HomeView(),
    // SearchView(),
    // CategoriesView(),
    // FavouriteView(),
    // ProfileScreenView(),
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Widget get currentPage => pages[activeTab.value];

  void changePage(int _index) {
    activeTab.value = _index;
  }
}
