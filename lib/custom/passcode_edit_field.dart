import 'package:dps_school/utils/color_helper.dart';
import 'package:flutter/material.dart';

class PasscodeEditField extends StatelessWidget {

  final TextEditingController controller;
  final TextCapitalization? textCapitalization;
  final int? characterLength;
  final TextInputType? inputType;
  final String? hintText;

  const PasscodeEditField({Key? key, this.characterLength,
    required this.controller, this.inputType, this.hintText,
    this.textCapitalization}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: whiteColor,
              border: Border.all(
                  color: txtThemeColor,
                  width: 1.2
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
