
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';

import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String HintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? showpassword;
  const CustomTextFormFiled({
    super.key,
    required this.HintText,
    this.controller,
    this.validator,
    this.showpassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: showpassword!,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: screenWidth(15),
          horizontal: screenWidth(10),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide.none),
        hintText: HintText,
        hintStyle: TextStyle(
          color: AppColors.whiteColor,
          fontSize: screenWidth(22),
        ),
        fillColor: AppColors.blackColor,
        filled: true,
      ),
    );
  }
}
