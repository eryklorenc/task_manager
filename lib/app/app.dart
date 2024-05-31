import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/data/datasources/notification/notification_datasources.dart';
import 'package:task_manager/features/home/ui/home_page.dart';
import 'package:task_manager/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.initSingleton(context);
    return MaterialApp(
      navigatorKey: NotificationDataSources.globalKey,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.main,
        ),
        useMaterial3: true,
        extensions: [
          AppTextThemeExtension.initialize(),
        ],
      ),
      home: const HomePage(),
    );
  }
}
