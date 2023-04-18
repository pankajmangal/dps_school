import 'package:dps_school/ui/splash/controller/splash_controller.dart';
import 'package:dps_school/utils/color_helper.dart';
import 'package:dps_school/utils/image_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  final SplashController _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;

    return Container(
      width: width, height: height,
      color: whiteColor,
      child: Center(
        child: Image.asset(dpsLogo, width: width * 0.4, height: height * 0.4,),
      ),
    );
  }
}
