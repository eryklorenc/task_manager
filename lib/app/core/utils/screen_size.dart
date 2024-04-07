import 'package:flutter/material.dart';

class ScreenSize {
  /// screen width in pixels
  final double wPx;

  /// screen height in pixels
  final double hPx;

  /// height in px of one unit */
  final double hMul;

  /// width in px of one unit */
  final double wMul;

  const ScreenSize._(this.wPx, this.hPx, this.hMul, this.wMul);

  static late ScreenSize _singleton;

  static initSingleton(BuildContext context) {
    _singleton = ScreenSize(context);
  }

  factory ScreenSize.singelton() {
    return _singleton;
  }

  /// Will divide screen into [widthUnitsCount] and [heightUnitsCount] of units.
  /// This units will become base unit to use in views.
  /// You should multiply unit by [wMul] and [hMul] to converts units to screen dependant pixel size.
  factory ScreenSize(BuildContext context, [int widthUnitsCount = 100, int heightUnitsCount = 100]) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double widthMultiplier = screenWidth / widthUnitsCount;
    double heightMultiplier = screenHeight / heightUnitsCount;

    return ScreenSize._(screenWidth, screenHeight, heightMultiplier, widthMultiplier);
  }
}

class EdgeInsetsSS extends EdgeInsets {
  const EdgeInsetsSS.fromLTRB(double left, double top, double right, double bottom)
      : super.fromLTRB(left, top, right, bottom);

  const EdgeInsetsSS.all(double value) : super.all(value);

  const EdgeInsetsSS.only({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) : super.only(left: left, top: top, right: right, bottom: bottom);

  const EdgeInsetsSS.symmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) : super.symmetric(vertical: vertical, horizontal: horizontal);

  @override
  double get right => super.right * ScreenSize.singelton().wMul;

  @override
  double get left => super.left * ScreenSize.singelton().wMul;

  @override
  double get top => super.top * ScreenSize.singelton().hMul;

  @override
  double get bottom => super.bottom * ScreenSize.singelton().hMul;
}

class ContainerSS extends Container {
  ContainerSS(
      {Key? key,
      AlignmentGeometry? alignment,
      EdgeInsetsGeometry? padding,
      Color? color,
      Decoration? decoration,
      Decoration? foregroundDecoration,
      double? width,
      double? height,
      BoxConstraints? constraints,
      EdgeInsetsGeometry? margin,
      Matrix4? transform,
      Widget? child})
      : super(
            key: key,
            alignment: alignment,
            padding: padding,
            color: color,
            decoration: decoration,
            foregroundDecoration: foregroundDecoration,
            width: width == null ? width : width * ScreenSize.singelton().wMul,
            height: height == null ? height : height * ScreenSize.singelton().hMul,
            constraints: constraints,
            margin: margin,
            transform: transform,
            child: child);
}
