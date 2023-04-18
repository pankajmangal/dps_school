import 'package:dps_school/utils/color_helper.dart';
import 'package:dps_school/utils/gap_helper.dart';
import 'package:flutter/material.dart';

class CustomUserField extends StatelessWidget {

  final String title;
  final TextEditingController controller;
  final TextCapitalization? textCapitalization;
  final int? characterLength;
  final TextInputType? inputType;
  final String? hintText;

  const CustomUserField({Key? key, required this.title, this.characterLength,
    required this.controller, this.inputType, this.hintText,
    this.textCapitalization}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            )
        ),
        const VerticalGap(gap: 12.0),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: editFieldColor,
              border: Border.all(
                  color: textFieldBorderColor,
                  width: 0.2
              )
          ),
          child: TextFormField(
            controller: controller,
            keyboardType: inputType ?? TextInputType.text,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            textInputAction: TextInputAction.next,
            maxLength: characterLength ?? 20,
            style: const TextStyle(fontSize: 18, color: blackColor),
            decoration: InputDecoration(
                hintStyle: const TextStyle(fontSize: 16, color: hintColor),
                errorStyle: const TextStyle(fontSize: 12, color: Colors.white),
                hintText: hintText ?? "",
                counterText: "",
                labelStyle: const TextStyle(fontSize: 12),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
            onChanged: (value){
              // if (kDebugMode) {
              //   print("Enter value :- $value");
              // }
            },
          ),
        )
      ],
    );
  }
}
