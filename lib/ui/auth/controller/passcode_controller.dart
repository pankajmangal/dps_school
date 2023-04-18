import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasscodeController extends GetxController{

  TextEditingController passController = TextEditingController(text: "");

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    passController.dispose();
  }
}