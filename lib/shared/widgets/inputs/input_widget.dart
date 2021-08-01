import 'package:flutter/material.dart';
import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';

class InputWidget extends StatelessWidget {

  final String? label;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final IconData? icon;
  final String? initialValue;
  final String? Function(String?)? validator;
  final bool isPass;
  final double height;
  final double width;

  const InputWidget({
    Key? key,
    this.label,
    required this.keyboardType,
    required this.controller,
    this.icon,
    this.initialValue,
    this.validator,
    this.isPass = false,
    this.height = 48,
    this.width = 48
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: new BoxDecoration(
            color: AppColors.secondary40,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.secondary50
            )
          ),
          child: new Center(
            child: new TextFormField(
              keyboardType: keyboardType,
              controller: controller,
              obscureText: isPass,
              validator: validator,
              initialValue: initialValue,
              maxLength: 2,
              textAlign: TextAlign.center,
              style: AppTextStyles.titleRegular,
              decoration: new InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  bottom: (height / 4) - 7
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
