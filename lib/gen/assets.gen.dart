/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_right.png
  AssetGenImage get icArrowRight =>
      const AssetGenImage('assets/icons/ic_arrow_right.png');

  /// File path: assets/icons/ic_filter.png
  AssetGenImage get icFilter =>
      const AssetGenImage('assets/icons/ic_filter.png');

  /// File path: assets/icons/ic_hide.png
  AssetGenImage get icHide => const AssetGenImage('assets/icons/ic_hide.png');

  /// File path: assets/icons/ic_mail.png
  AssetGenImage get icMail => const AssetGenImage('assets/icons/ic_mail.png');

  /// File path: assets/icons/ic_notification.png
  AssetGenImage get icNotification =>
      const AssetGenImage('assets/icons/ic_notification.png');

  /// File path: assets/icons/ic_password.png
  AssetGenImage get icPassword =>
      const AssetGenImage('assets/icons/ic_password.png');

  /// File path: assets/icons/ic_show.png
  AssetGenImage get icShow => const AssetGenImage('assets/icons/ic_show.png');

  /// File path: assets/icons/ic_user.png
  AssetGenImage get icUser => const AssetGenImage('assets/icons/ic_user.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icArrowRight,
        icFilter,
        icHide,
        icMail,
        icNotification,
        icPassword,
        icShow,
        icUser
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/home_background.png
  AssetGenImage get homeBackground =>
      const AssetGenImage('assets/images/home_background.png');

  /// File path: assets/images/ic_facebook.png
  AssetGenImage get icFacebook =>
      const AssetGenImage('assets/images/ic_facebook.png');

  /// File path: assets/images/ic_google.png
  AssetGenImage get icGoogle =>
      const AssetGenImage('assets/images/ic_google.png');

  /// File path: assets/images/login_background.png
  AssetGenImage get loginBackground =>
      const AssetGenImage('assets/images/login_background.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/on_boarding_1.png
  AssetGenImage get onBoarding1 =>
      const AssetGenImage('assets/images/on_boarding_1.png');

  /// File path: assets/images/on_boarding_2.png
  AssetGenImage get onBoarding2 =>
      const AssetGenImage('assets/images/on_boarding_2.png');

  /// File path: assets/images/promo_advertising.png
  AssetGenImage get promoAdvertising =>
      const AssetGenImage('assets/images/promo_advertising.png');

  /// File path: assets/images/promo_advertising_1.png
  AssetGenImage get promoAdvertising1 =>
      const AssetGenImage('assets/images/promo_advertising_1.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        homeBackground,
        icFacebook,
        icGoogle,
        loginBackground,
        logo,
        onBoarding1,
        onBoarding2,
        promoAdvertising,
        promoAdvertising1
      ];
}

class AppAssets {
  AppAssets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package = 'food_delivery_app_ui',
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package = 'food_delivery_app_ui',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/food_delivery_app_ui/$_assetName';
}
