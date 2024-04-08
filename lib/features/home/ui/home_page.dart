import 'package:flutter/material.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/features/add_task/ui/add_task_page.dart';
import 'package:task_manager/features/home/widgets/settings_list.dart';
import 'package:task_manager/features/home/widgets/top_widget.dart';
import 'package:task_manager/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return buildUserScreen(context);
  }
}

Widget buildUserScreen(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: AppColors.main,
      toolbarHeight: 20,
    ),
    body: Form(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildTopWidget(context),
            ContainerSS(
              padding: const EdgeInsetsSS.symmetric(horizontal: 2.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildOptionsLabel(context),
                  settingsList(
                      icon: Icons.add,
                      title: S.of(context).add_task,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddTaskPage(),
                          ),
                        );
                      },
                      context: context),
                  settingsList(icon: Icons.event_note, title: S.of(context).planned, onTap: () {}, context: context),
                  settingsList(icon: Icons.work, title: S.of(context).in_progress, onTap: () {}, context: context),
                  settingsList(icon: Icons.check_circle, title: S.of(context).done, onTap: () {}, context: context),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildRow({Widget? child}) {
  return ContainerSS(
    margin: const EdgeInsetsSS.only(top: 2.5),
    child: child,
  );
}

Widget _buildOptionsLabel(BuildContext context) {
  return _buildRow(
    child: Text(
      S.of(context).options,
      style: Theme.of(context).xTextTheme.body1,
    ),
  );
}
