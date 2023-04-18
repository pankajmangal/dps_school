import 'dart:async';

import 'package:dps_school/routes/route_constants.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  late Timer _timer;

  @override
  void onInit() async{
    super.onInit();

    _timer = Timer(const Duration(seconds: 3), (){
      Get.offAllNamed(attendanceScreen);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}