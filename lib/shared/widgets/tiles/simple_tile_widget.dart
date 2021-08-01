import 'package:flutter/material.dart';

import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';

class SimpleTileWidget extends StatelessWidget {

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const SimpleTileWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: onTap,
      child: new Column(
        children: [
          new ListTile(
            contentPadding: EdgeInsets.zero,
            leading: new Container(
              height: 56,
              width: 56,
              decoration: new BoxDecoration(
                color: AppColors.secondary40,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.secondary50
                )
              ),
              child: new Icon(
                Icons.gamepad_rounded,
                color: AppColors.heading,
                size: 36,
              ),
            ),
            title: new Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.titleListTileBackground,
            ),
            subtitle: new Text(
              subtitle,
              style: AppTextStyles.buttonBackground,
            ),
            trailing: new Icon(
              Icons.chevron_right,
              color: AppColors.heading,
            ),
          ),
          new Divider(
            color: AppColors.secondary50,
          )
        ],
      ),
    );
  }
}
