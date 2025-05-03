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

  /// Directory path: assets/icons/nav
  $AssetsIconsNavGen get nav => const $AssetsIconsNavGen();

  /// Directory path: assets/icons/profile
  $AssetsIconsProfileGen get profile => const $AssetsIconsProfileGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/Logo.png');

  /// File path: assets/images/Logoo.png
  AssetGenImage get logoo => const AssetGenImage('assets/images/Logoo.png');

  /// File path: assets/images/notNotification.png
  AssetGenImage get notNotification =>
      const AssetGenImage('assets/images/notNotification.png');

  /// File path: assets/images/onboarding.png
  AssetGenImage get onboarding =>
      const AssetGenImage('assets/images/onboarding.png');

  /// File path: assets/images/onboardingg.png
  AssetGenImage get onboardingg =>
      const AssetGenImage('assets/images/onboardingg.png');

  /// File path: assets/images/onboardinggg.png
  AssetGenImage get onboardinggg =>
      const AssetGenImage('assets/images/onboardinggg.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    logo,
    logoo,
    notNotification,
    onboarding,
    onboardingg,
    onboardinggg,
  ];
}

class $AssetsIconsNavGen {
  const $AssetsIconsNavGen();

  /// File path: assets/icons/nav/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/nav/home.png');

  /// File path: assets/icons/nav/news.png
  AssetGenImage get news => const AssetGenImage('assets/icons/nav/news.png');

  /// File path: assets/icons/nav/plus (2).png
  AssetGenImage get plus2 =>
      const AssetGenImage('assets/icons/nav/plus (2).png');

  /// File path: assets/icons/nav/plus.png
  AssetGenImage get plus => const AssetGenImage('assets/icons/nav/plus.png');

  /// File path: assets/icons/nav/profil.png
  AssetGenImage get profil =>
      const AssetGenImage('assets/icons/nav/profil.png');

  /// File path: assets/icons/nav/report.png
  AssetGenImage get report =>
      const AssetGenImage('assets/icons/nav/report.png');

  /// List of all assets
  List<AssetGenImage> get values => [home, news, plus2, plus, profil, report];
}

class $AssetsIconsProfileGen {
  const $AssetsIconsProfileGen();

  /// File path: assets/icons/profile/edit.png
  AssetGenImage get edit =>
      const AssetGenImage('assets/icons/profile/edit.png');

  /// File path: assets/icons/profile/kebijakanprivacy.png
  AssetGenImage get kebijakanprivacy =>
      const AssetGenImage('assets/icons/profile/kebijakanprivacy.png');

  /// File path: assets/icons/profile/logout.png
  AssetGenImage get logout =>
      const AssetGenImage('assets/icons/profile/logout.png');

  /// File path: assets/icons/profile/syaratketentuan.png
  AssetGenImage get syaratketentuan =>
      const AssetGenImage('assets/icons/profile/syaratketentuan.png');

  /// File path: assets/icons/profile/tentangsigap.png
  AssetGenImage get tentangsigap =>
      const AssetGenImage('assets/icons/profile/tentangsigap.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    edit,
    kebijakanprivacy,
    logout,
    syaratketentuan,
    tentangsigap,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
