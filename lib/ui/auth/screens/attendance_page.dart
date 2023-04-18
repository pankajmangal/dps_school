import 'package:dps_school/custom/custom_button.dart';
import 'package:dps_school/custom/custom_button_outline.dart';
import 'package:dps_school/routes/route_constants.dart';
import 'package:dps_school/ui/auth/controller/attendance_controller.dart';
import 'package:dps_school/utils/color_helper.dart';
import 'package:dps_school/utils/gap_helper.dart';
import 'package:dps_school/utils/image_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendancePage extends StatelessWidget {
  AttendancePage({Key? key}) : super(key: key);
  final AttendanceController _attendanceController = Get.put(AttendanceController());

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;

    return Scaffold(
      body: Container(
          width: width, height: height,
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          color: whiteColor,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  VerticalGap(gap: height * 0.18),
                  Obx(() => Text(
                    _attendanceController.currentTime.value,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 26.0,
                    ),
                    //style: kTitleStyle,
                  )),
                  const VerticalGap(gap: 6.0),
                  Obx(() => Text(
                    _attendanceController.currentDate.value,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: buttonTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 24.0,
                    ),
                    //style: kTitleStyle,
                  )),
                  VerticalGap(gap: height * 0.02),
                  Image.asset(dpsLogo, width: width * 0.6, height: height * 0.4),
                  VerticalGap(gap: height * 0.02),
                  CustomButton(title: "Start Attendance", onClick: () => Get.toNamed(passcodeScreen)),
                  VerticalGap(gap: height * 0.02),
                  CustomButtonOutline(title: "Admin Access", onClick: () {}),
                ],
              ),
              const Positioned(
                bottom: 12,
                  left: 0, right: 0,
                  child: Text(
                "on instaCiti product",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: buttonTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
                //style: kTitleStyle,
              ))
            ],
          )
      ),
    );
  }
}
