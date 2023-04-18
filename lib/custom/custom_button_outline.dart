import 'package:dps_school/utils/gap_helper.dart';
import 'package:flutter/material.dart';
import '../../utils/color_helper.dart';

class CustomButtonOutline extends StatelessWidget {

  final VoidCallback onClick;
  final String title;

  const CustomButtonOutline({Key? key, required this.title,
    required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width * 0.44,
      height: 48,
      color: whiteColor,
      elevation: 2.0,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(width: 3.0,
              color: redColor)
      ),
      onPressed: onClick,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.admin_panel_settings_rounded, color: redColor),
          const HorizontalGap(gap: 12.0),
          Text(
            title,
            style: const TextStyle(
                color: redColor,
                fontWeight: FontWeight.w600,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
