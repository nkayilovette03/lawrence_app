import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lorrence_app/app/modules/onboarding/onboarding_model.dart';
import 'package:lorrence_app/app/routes/app_pages.dart';
import 'package:video_player/video_player.dart';

class OnboardingController extends GetxController {
  late VideoPlayerController playerController;
  VoidCallback? playerListener;

  var pageController = PageController();

  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  RxBool showVideo = false.obs;

  // FxN handles next slide clicked
  forwardAction() {
    if (isLastPage) {
      // go to home page or auth screen
      Get.toNamed(Routes.HOME);
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  // List of onboarding screen
  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'Lets Finance Your Project',
        'With the most complete source of dreams come true near you.',
        Icons.bakery_dining_outlined),
    OnboardingInfo(
      'Lets Finance Your Project',
      'With the most complete source of dreams come true near you.',
      Icons.trending_up_sharp,
    ),
    OnboardingInfo(
      'Lets Finance Your Project',
      'With the most complete source of dreams come true near you.',
      Icons.house,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    initializePlayer();
  }

  @override
  void onReady() {
    super.onReady();
    // playerController!.play();
  }

  @override
  void onClose() {
    super.onClose();
    playerController.dispose();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> initializePlayer() async {
    playerController = VideoPlayerController.asset("assets/ocean.m4v");

    await Future.wait([playerController.initialize()]);
    await playerController.setLooping(true);
    await playerController.play();

    // Ensure the first frame is shown after the video is initialized.
    update();
  }
}
