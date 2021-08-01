import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';

class CategoryCard extends StatelessWidget {

  final String image;
  final String label;
  final VoidCallback onTap;

  const CategoryCard({
    Key? key,
    required this.image,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onTap,
      child: new Container(
        width: 104,
        height: 120,
        decoration: new BoxDecoration(
          color: AppColors.secondary40,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.secondary50
          )
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              semanticsLabel: label,
            ),
            new SizedBox(height: 16),
            new Text(
              label,
              textAlign: TextAlign.center,
              style: AppTextStyles.buttonBoldBackground,
            )
          ],
        ),
      ),
    );
  }
}
