import 'package:flutter/material.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';

Widget settingsList({
  required BuildContext context,
  required IconData icon,
  required String title,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsetsSS.symmetric(vertical: 1.25),
    child: Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: AppColors.white,
        iconColor: AppColors.main,
        leading: Icon(
          icon,
          size: 20,
        ),
        trailing: const Icon(Icons.chevron_right_rounded, size: 30),
        title: Text(
          title,
          style: Theme.of(context).xTextTheme.body2,
        ),
        onTap: onTap,
      ),
    ),
  );
}
