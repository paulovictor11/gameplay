import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';

class TextareaWidget extends StatelessWidget {

  final String? label;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final IconData? icon;
  final String? initialValue;
  final String? Function(String?)? validator;
  final bool isPass;
  final int? maxLength;
  final TextAlign textAlign;

  const TextareaWidget({
    Key? key,
    this.label,
    required this.keyboardType,
    required this.controller,
    this.icon,
    this.initialValue,
    this.validator,
    this.isPass = false,
    this.maxLength,
    this.textAlign = TextAlign.start
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: new BoxDecoration(
        color: AppColors.secondary40,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.secondary50
        )
      ),
      child: new TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: isPass,
        validator: validator,
        initialValue: initialValue,
        maxLength: maxLength,
        textAlign: textAlign,
        maxLines: 6,
        style: AppTextStyles.titleRegular,
        decoration: new InputDecoration(
          border: InputBorder.none,
          counterText: ''
        ),
      ),
    );
  }
}
