import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';

class DiscordButtonWidget extends StatelessWidget {

  final String label;
  final VoidCallback onTap;

  const DiscordButtonWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onTap,
      child: new Container(
        height: 56,
        decoration: new BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: new Row(
          children: [
            new Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24
              ),
              child: new Icon(
                FontAwesomeIcons.discord,
                color: AppColors.heading,
                size: 28,
              )
            ),
            new Container(
              width: 1,
              color: AppColors.secondary80,
            ),
            new Expanded(
              child: new Text(
                label,
                textAlign: TextAlign.center,
                style: AppTextStyles.titleRegular,
              ),
            )
          ],
        ),
      ),
    );
  }
}
