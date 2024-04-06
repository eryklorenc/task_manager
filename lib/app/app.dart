import 'package:flutter/material.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/start_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Theme.of(context).colorScheme.buttonTextColor,
        ),
        useMaterial3: true,
        extensions: [
          AppTextThemeExtension.initialize(),
        ],
      ),
      home: const StartPage(),
    );
  }
}
