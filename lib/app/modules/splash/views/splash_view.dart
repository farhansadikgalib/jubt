import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jubt/app/modules/splash/controllers/splash_controller.dart';
import 'package:jubt/generated/assets.dart';
import 'package:lottie/lottie.dart';

import '../../../core/style/app_colors.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundColor,
      ),
      child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: Center(
            child: Lottie.asset(
              Assets.lottieSplash,
              controller: controller.animationController,
              onLoaded: (composition) {
                controller.animationController.forward();
              },
            ),
          )),
    );
  }
}
