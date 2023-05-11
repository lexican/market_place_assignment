/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/OpenSans-Bold.ttf
  String get openSansBold => 'assets/fonts/OpenSans-Bold.ttf';

  /// File path: assets/fonts/OpenSans-Regular.ttf
  String get openSansRegular => 'assets/fonts/OpenSans-Regular.ttf';

  /// List of all assets
  List<String> get values => [openSansBold, openSansRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/category.svg
  SvgGenImage get category => const SvgGenImage('assets/icons/category.svg');

  /// File path: assets/icons/globe_icon.svg
  SvgGenImage get globeIcon => const SvgGenImage('assets/icons/globe_icon.svg');

  /// File path: assets/icons/home_active.svg
  SvgGenImage get homeActive =>
      const SvgGenImage('assets/icons/home_active.svg');

  /// File path: assets/icons/home_inactive.svg
  SvgGenImage get homeInactive =>
      const SvgGenImage('assets/icons/home_inactive.svg');

  /// File path: assets/icons/search-icon.svg
  SvgGenImage get searchIcon =>
      const SvgGenImage('assets/icons/search-icon.svg');

  /// File path: assets/icons/settings_active.svg
  SvgGenImage get settingsActive =>
      const SvgGenImage('assets/icons/settings_active.svg');

  /// File path: assets/icons/settings_inactive.svg
  SvgGenImage get settingsInactive =>
      const SvgGenImage('assets/icons/settings_inactive.svg');

  /// File path: assets/icons/voucher_active.svg
  SvgGenImage get voucherActive =>
      const SvgGenImage('assets/icons/voucher_active.svg');

  /// File path: assets/icons/wallet_active.svg
  SvgGenImage get walletActive =>
      const SvgGenImage('assets/icons/wallet_active.svg');

  /// File path: assets/icons/wallet_inactive.svg
  SvgGenImage get walletInactive =>
      const SvgGenImage('assets/icons/wallet_inactive.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        category,
        globeIcon,
        homeActive,
        homeInactive,
        searchIcon,
        settingsActive,
        settingsInactive,
        voucherActive,
        walletActive,
        walletInactive
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bill.png
  AssetGenImage get bill => const AssetGenImage('assets/images/bill.png');

  /// File path: assets/images/cloth-1.jpg
  AssetGenImage get cloth1 => const AssetGenImage('assets/images/cloth-1.jpg');

  /// File path: assets/images/cloth-2.jpg
  AssetGenImage get cloth2 => const AssetGenImage('assets/images/cloth-2.jpg');

  /// File path: assets/images/cloth-3.jpeg
  AssetGenImage get cloth3 => const AssetGenImage('assets/images/cloth-3.jpeg');

  /// File path: assets/images/cloth-4.jpeg
  AssetGenImage get cloth4 => const AssetGenImage('assets/images/cloth-4.jpeg');

  /// File path: assets/images/cloth-5.jpeg
  AssetGenImage get cloth5 => const AssetGenImage('assets/images/cloth-5.jpeg');

  /// File path: assets/images/cloth-6.jpeg
  AssetGenImage get cloth6 => const AssetGenImage('assets/images/cloth-6.jpeg');

  /// File path: assets/images/plane.png
  AssetGenImage get plane => const AssetGenImage('assets/images/plane.png');

  /// File path: assets/images/product-image-1.jpg
  AssetGenImage get productImage1 =>
      const AssetGenImage('assets/images/product-image-1.jpg');

  /// File path: assets/images/product-image-2.jpg
  AssetGenImage get productImage2 =>
      const AssetGenImage('assets/images/product-image-2.jpg');

  /// File path: assets/images/product-image-3.jpg
  AssetGenImage get productImage3 =>
      const AssetGenImage('assets/images/product-image-3.jpg');

  /// File path: assets/images/topup.png
  AssetGenImage get topup => const AssetGenImage('assets/images/topup.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bill,
        cloth1,
        cloth2,
        cloth3,
        cloth4,
        cloth5,
        cloth6,
        plane,
        productImage1,
        productImage2,
        productImage3,
        topup
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
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
    String? package,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
