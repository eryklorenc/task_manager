import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/generated/l10n.dart';
import 'package:task_manager/features/edit_task/edit_task_page.dart';

Widget taskWidget(
  BuildContext context,
  String? name,
  String? description,
  String? owner,
  DateTime? dueDate,
  String? priority,
  String taskId,
) {
  return ContainerSS(
    margin: const EdgeInsetsSS.symmetric(horizontal: 5, vertical: 0.3),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: AppColors.main,
        width: 1,
      ),
    ),
    padding: const EdgeInsetsSS.all(1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (name != null && name.isNotEmpty)
          Text(
            S.of(context).name(name),
            style: Theme.of(context).xTextTheme.body2,
          ),
        if (description != null && description.isNotEmpty)
          Text(
            S.of(context).description_name(description),
            style: Theme.of(context).xTextTheme.body2,
          ),
        if (owner != null && owner.isNotEmpty)
          Text(
            S.of(context).owner(owner),
            style: Theme.of(context).xTextTheme.body2,
          ),
        if (dueDate != null)
          Text(
            S.of(context).date(DateFormat.yMd().format(dueDate.toLocal())),
            style: Theme.of(context).xTextTheme.body2,
          ),
        if (priority != null && priority.isNotEmpty)
          Text(
            S.of(context).priority(priority),
            style: Theme.of(context).xTextTheme.body2,
          ),
        Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditTaskPage(taskId: taskId),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.main,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              S.of(context).edit,
              style: Theme.of(context).xTextTheme.body3,
            ),
          ),
        ),
      ],
    ),
  );
}
