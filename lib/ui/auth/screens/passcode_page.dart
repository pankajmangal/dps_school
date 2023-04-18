import 'package:dps_school/custom/custom_button.dart';
import 'package:dps_school/custom/passcode_edit_field.dart';
import 'package:dps_school/ui/auth/controller/passcode_controller.dart';
import 'package:dps_school/utils/color_helper.dart';
import 'package:dps_school/utils/gap_helper.dart';
import 'package:dps_school/utils/image_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasscodePage extends StatelessWidget {
  PasscodePage({Key? key}) : super(key: key);
  final PasscodeController _passcodeController = Get.put(PasscodeController());

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;

    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: Container(
            width: width, height: height,
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            color: whiteColor,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    VerticalGap(gap: height * 0.04),
                    InkWell(child: Row(
                      children: const [
                         Icon(Icons.arrow_back_ios_new_rounded),
                         HorizontalGap(gap: 8.0),
                         Text(
                          "Back",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                          ),
                          //style: kTitleStyle,
                        ),
                      ],
                    ), onTap: () => Get.back()),
                    VerticalGap(gap: height * 0.15),
                    const Text(
                      "Enter Passcode",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 24.0,
                      ),
                      //style: kTitleStyle,
                    ),
                    const VerticalGap(gap: 8.0),
                    const Text(
                      "Enter Passcode to Access",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: buttonTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                      ),
                      //style: kTitleStyle,
                    ),
                    VerticalGap(gap: height * 0.02),
                    Image.asset(lockImg, width: width * 0.9, height: height * 0.3),
                    VerticalGap(gap: height * 0.02),
                    PasscodeEditField(controller: _passcodeController.passController),
                    VerticalGap(gap: height * 0.02),
                    CustomButton(title: "Proceed", onClick: () {}),
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
      ),
    );
  }
}
