import 'package:flutter/material.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/generated/l10n.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOptionsLabel(context),
          Padding(
            padding: const EdgeInsetsSS.only(top: 2, left: 5, right: 5),
            child: Text(
              S.of(context).description,
              style: Theme.of(context).xTextTheme.body5,
            ),
          ),
          Padding(
            padding: const EdgeInsetsSS.only(top: 2, left: 5),
            child: ContainerSS(
              height: 6.81,
              width: 88.89,
              margin: const EdgeInsetsSS.only(top: 2),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.main,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  S.of(context).create,
                  style: Theme.of(context).xTextTheme.display0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildRow({Widget? child}) {
  return ContainerSS(
    margin: const EdgeInsetsSS.only(top: 2, left: 5),
    child: child,
  );
}

Widget _buildOptionsLabel(BuildContext context) {
  return _buildRow(
    child: Text(
      S.of(context).add_task,
      style: Theme.of(context).xTextTheme.body1,
    ),
  );
}
