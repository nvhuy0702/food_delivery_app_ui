import 'package:flutter/material.dart';

import 'size.dart';

class AppSpacing {
  AppSpacing._();

  static SizedBox _sizedBoxSquare(double dimension) {
    return SizedBox.square(
      dimension: dimension * AppSize.sizeScale,
    );
  }

  /// size 4
  static SizedBox get xXS => _sizedBoxSquare(AppSize.xXS);

  /// size 8
  static SizedBox get xS => _sizedBoxSquare(AppSize.xS);

  /// size 12
  static SizedBox get S => _sizedBoxSquare(AppSize.S);

  /// size 16
  static SizedBox get M => _sizedBoxSquare(AppSize.M);

  /// size 20
  static SizedBox get L => _sizedBoxSquare(AppSize.L);

  /// size 24
  static SizedBox get xL => _sizedBoxSquare(AppSize.xL);

  /// size 32
  static SizedBox get xXL => _sizedBoxSquare(AppSize.xXL);

  /// size 40.0
  static SizedBox get xXXL => _sizedBoxSquare(AppSize.xXXL);
}
