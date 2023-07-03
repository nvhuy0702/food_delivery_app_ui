import 'package:flutter/widgets.dart';

import 'size.dart';

class AppEdgeInsets {
  // Padding
  static const EdgeInsets allXXS = EdgeInsets.all(AppSize.xXS);
  static const EdgeInsets allXS = EdgeInsets.all(AppSize.xS);
  static const EdgeInsets allS = EdgeInsets.all(AppSize.S);
  static const EdgeInsets allM = EdgeInsets.all(AppSize.M);
  static const EdgeInsets allL = EdgeInsets.all(AppSize.L);
  static const EdgeInsets allxL = EdgeInsets.all(AppSize.xL);
  static const EdgeInsets allxXL = EdgeInsets.all(AppSize.xXL);
  static const EdgeInsets allxXXL = EdgeInsets.all(AppSize.xXXL);

  // EdgeInsets for each side
  static EdgeInsets top([double value = AppSize.M]) =>
      EdgeInsets.only(top: value);

  static EdgeInsets bottom([double value = AppSize.M]) =>
      EdgeInsets.only(bottom: value);

  static EdgeInsets left([double value = AppSize.M]) =>
      EdgeInsets.only(left: value);

  static EdgeInsets right([double value = AppSize.M]) =>
      EdgeInsets.only(right: value);

  static EdgeInsets horizontal([double value = AppSize.M]) =>
      EdgeInsets.symmetric(horizontal: value);

  static EdgeInsets symmetric({
    double vertical = AppSize.M,
    double horizontal = AppSize.M,
  }) =>
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);

  static EdgeInsets vertical([double value = AppSize.M]) =>
      EdgeInsets.symmetric(vertical: value);

  static noTop([double value = AppSize.M]) =>
      EdgeInsets.all(value).copyWith(top: 0);

  static noBottom([double value = AppSize.M]) =>
      EdgeInsets.all(value).copyWith(bottom: 0);

  static noLeft([double value = AppSize.M]) =>
      EdgeInsets.all(value).copyWith(left: 0);

  static noRight([double value = AppSize.M]) =>
      EdgeInsets.all(value).copyWith(right: 0);
}
