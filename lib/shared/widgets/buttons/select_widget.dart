import 'package:flutter/material.dart';

import 'package:gameplay/shared/theme/app_colors.dart';
import 'package:gameplay/shared/theme/app_text_styles.dart';

class SelectWidget extends StatefulWidget {

  final String label;
  final VoidCallback onTap;

  const SelectWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  _SelectWidgetState createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: widget.onTap,
      child: new Container(
        decoration: new BoxDecoration(
          color: AppColors.secondary80,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.secondary50
          )
        ),
        child: new Row(
          children: [
            new Container(
              height: 64,
              width: 64,
              decoration: new BoxDecoration(
                color: AppColors.secondary40,
                borderRadius: BorderRadius.circular(12),
              ),
              child: new Icon(
                Icons.gamepad_rounded,
                color: AppColors.heading,
                size: 36,
              ),
            ),
            new Expanded(
              child: new ListTile(
                title: new Text(
                  widget.label,
                  style: AppTextStyles.titleListTileBackground,
                ),
                trailing: new Icon(
                  Icons.chevron_right,
                  color: AppColors.heading,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}