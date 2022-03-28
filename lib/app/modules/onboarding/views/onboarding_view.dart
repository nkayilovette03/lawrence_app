import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lorrence_app/app/data/globals.dart';
import 'package:lorrence_app/app/data/screen_size_config.dart';
import 'package:lorrence_app/app/data/theme/colors.dart';
import 'package:lorrence_app/app/data/widgets/btn_widget.dart';
import 'package:video_player/video_player.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  // late final double _appbarSize;
  @override
  Widget build(BuildContext context) {
    // OnboardingController controller =
    //     Get.put<OnboardingController>(OnboardingController());

    SizeConfig().init(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                // If your background video doesn't look right, try changing the BoxFit property.
                // BoxFit.fill created the look I was going for.
                fit: BoxFit.cover,
                child: GetBuilder<OnboardingController>(
                  init: OnboardingController(),
                  builder: (controller) => SizedBox(
                    width: controller.playerController.value.size.width,
                    height: controller.playerController.value.size.height,
                    child: controller.playerController.value.isInitialized
                        ? VideoPlayer(
                            controller.playerController,
                          )
                        : Container(),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: SizeConfig.screenHeight! * 0.7,
                width: SizeConfig.screenWidth!,
                color: Colors.transparent,
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: controller.selectedPageIndex,
                  itemCount: controller.onboardingPages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 10.0,
                              ),
                              height: SizeConfig.screenHeight! * 0.7,
                              width: SizeConfig.screenWidth! * 0.85,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                ),
                                // boxShadow: kElevationToShadow[6],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: SizeConfig.screenHeight! * 0.02,
                                      ),
                                      Icon(
                                        controller.onboardingPages[index].icon,
                                        size: SizeConfig.screenHeight! * 0.1,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: SizeConfig.screenHeight! * 0.02,
                                      ),
                                      Text(
                                        controller.onboardingPages[index].title,
                                        style: headerTextStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: SizeConfig.screenHeight! * 0.02,
                                      ),
                                      Text(
                                        controller
                                            .onboardingPages[index].description,
                                        textAlign: TextAlign.center,
                                        style: mediumTextStyle,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        color: Colors.transparent,
                                        // height: SizeConfig.screenHeight! * 0.16,
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 15.0,
                                          horizontal: 10.0,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: List.generate(
                                                controller
                                                    .onboardingPages.length,
                                                (index) => Obx(() {
                                                  return Container(
                                                    width: SizeConfig
                                                            .screenWidth! *
                                                        0.03,
                                                    height: SizeConfig
                                                            .screenHeight! *
                                                        0.03,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 5.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: controller
                                                                  .selectedPageIndex
                                                                  .value ==
                                                              index
                                                          ? primary
                                                          : Colors.grey,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  );
                                                }),
                                              ),
                                            ),
                                            SizedBox(
                                              height: SizeConfig.screenHeight! *
                                                  0.02,
                                            ),
                                            Container(
                                              width:
                                                  SizeConfig.screenWidth! * 0.8,
                                              child: BtnWidget(
                                                labelText: 'Get Started',
                                                labelColor:
                                                    MaterialStateProperty.all(
                                                  Colors.white,
                                                ),
                                                showIcon: false,
                                                onPressed: () =>
                                                    Get.toNamed('/login'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
