import 'package:flutter/material.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';

extension XTheme on ThemeData {
  AppTextThemeExtension get xTextTheme => extension<AppTextThemeExtension>()!;
}

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  AppTextThemeExtension({
    required this.display0,
    required this.display1,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
    required this.body5,
  });

  final TextStyle display0;

  final TextStyle display1;

  final TextStyle body1;

  final TextStyle body2;

  final TextStyle body3;

  final TextStyle body4;

  final TextStyle body5;

  factory AppTextThemeExtension.initialize() => AppTextThemeExtension(
        display0: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          height: 1.0,
        ),
        display1: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 26,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 1.0,
        ),
        body1: const TextStyle(
          color: AppColors.main,
          fontSize: 30,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 1.0,
        ),
        body2: const TextStyle(
          color: AppColors.main,
          fontSize: 13,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 1.0,
        ),
        body3: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          height: 1.2,
        ),
        body4: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          height: 1.0,
        ),
        body5: const TextStyle(
            color: Color(0xFF5E6366),
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            height: 1),
      );

  @override
  ThemeExtension<AppTextThemeExtension> copyWith({
    TextStyle? display0,
    TextStyle? display1,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
    TextStyle? body4,
    TextStyle? body5,
  }) {
    return AppTextThemeExtension(
      display0: display0 ?? this.display0,
      display1: display1 ?? this.display1,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
      body4: body4 ?? this.body4,
      body5: body5 ?? this.body5,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    if (other == null || t == 0.0) return this;

    return other;
  }
}
