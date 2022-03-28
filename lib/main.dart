import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lorrence_app/app/data/theme/app_themes.dart';
import 'package:ots/ots.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    OTS(
      persistNoInternetNotification: false,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: AppPages.ONBOARDING,
        getPages: AppPages.routes,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.system,
        defaultTransition: Transition.zoom,
      ),
    ),
  );
}
