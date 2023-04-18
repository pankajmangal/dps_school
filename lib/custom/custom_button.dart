import 'package:flutter/material.dart';

import '../utils/color_helper.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback onClick;
  final String title;
  final double? width;
  final Color? btnColor;

  const CustomButton({Key? key, required this.title, this.btnColor,
    this.width, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width ?? MediaQuery.of(context).size.width,
      height: 48,
      color: btnColor ?? btnThemeColor,
      elevation: 2.0,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(width: 0.0,
              color: Colors.transparent)
      ),
      onPressed: onClick,
      child: Text(
        title,
        style: const TextStyle(
            color: whiteColor,
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
    );
  }
}
