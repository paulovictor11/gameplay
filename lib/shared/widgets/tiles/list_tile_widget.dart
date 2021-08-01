import 'package:flutter/material.dart';

import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';

class ListTileWidget extends StatelessWidget {

  final String label;
  final String category;
  final String date;
  final String type;
  final VoidCallback onTap;

  const ListTileWidget({
    Key? key,
    required this.label,
    required this.category,
    required this.date,
    required this.type,
    required this.onTap
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
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.titleListTileBackground,
                ),
                new Text(
                  category,
                  style: AppTextStyles.captionBackground,
                ),
              ],
            ),
            subtitle: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _tileText(
                  label: date,
                  icon: Icons.calendar_today_rounded,
                  labelStyle: AppTextStyles.buttonBackground,
                  iconColor: AppColors.primary
                ),
                _tileText(
                  label: type,
                  icon: Icons.person_rounded,
                  labelStyle: AppTextStyles.buttonOn,
                  iconColor: AppColors.on
                ),
              ],
            ),
          ),
          new Divider(
            color: AppColors.secondary50,
          )
        ],
      ),
    );
  }

  Widget _tileText({
    required String label,
    required IconData icon,
    required TextStyle labelStyle,
    required Color iconColor
  }) => new Row(
    children: [
      new Icon(
        icon,
        size: 20,
        color: iconColor,
      ),
      new SizedBox(width: 4),
      new Text(
        label,
        style: labelStyle,
      ),
    ],
  );
}
