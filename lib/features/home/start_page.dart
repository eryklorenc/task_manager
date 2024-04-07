import 'package:flutter/material.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/generated/l10n.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          S.of(context).start,
          style: Theme.of(context).xTextTheme.display0,
        ),
      ),
    );
  }
}
