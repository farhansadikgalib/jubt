import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void onInit() async {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    // startTimer();

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        gotoHome();
      }
    });

    super.onInit();
  }

  @override
  void onClose() {
    animationController.dispose();

    super.onClose();
  }

  startTimer() {
    var duration = const Duration(milliseconds: 3000);
    return Timer(duration, gotoHome);
  }

  void gotoHome() async {
    Get.offNamed(
      Routes.HOME,
    );
  }
}
