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

class Assets {
  Assets._();

  static const SvgGenImage bellFilled = SvgGenImage('assets/bell-filled.svg');
  static const SvgGenImage bellOutlined =
      SvgGenImage('assets/bell-outlined.svg');
  static const SvgGenImage boltLightning =
      SvgGenImage('assets/bolt-lightning.svg');
  static const SvgGenImage bookmark = SvgGenImage('assets/bookmark.svg');
  static const SvgGenImage circleEllipsisVertical =
      SvgGenImage('assets/circle-ellipsis-vertical.svg');
  static const SvgGenImage circleMicrophone =
      SvgGenImage('assets/circle-microphone.svg');
  static const SvgGenImage circleQuestion =
      SvgGenImage('assets/circle-question.svg');
  static const SvgGenImage envelopeDot = SvgGenImage('assets/envelope-dot.svg');
  static const SvgGenImage envelopeFilled =
      SvgGenImage('assets/envelope-filled.svg');
  static const SvgGenImage envelopeOutlined =
      SvgGenImage('assets/envelope-outlined.svg');
  static const SvgGenImage gear = SvgGenImage('assets/gear.svg');
  static const SvgGenImage houseWindowFilled =
      SvgGenImage('assets/house-window-filled.svg');
  static const SvgGenImage houseWindowOutlined =
      SvgGenImage('assets/house-window-outlined.svg');
  static const SvgGenImage lightbulbOn = SvgGenImage('assets/lightbulb-on.svg');
  static const SvgGenImage magnifyingGlassFilled =
      SvgGenImage('assets/magnifying-glass-filled.svg');
  static const SvgGenImage magnifyingGlassOutlined =
      SvgGenImage('assets/magnifying-glass-outlined.svg');
  static const SvgGenImage messageLines =
      SvgGenImage('assets/message-lines.svg');
  static const SvgGenImage microphoneFilled =
      SvgGenImage('assets/microphone-filled.svg');
  static const SvgGenImage microphoneOutlined =
      SvgGenImage('assets/microphone-outlined.svg');
  static const SvgGenImage moneyBills = SvgGenImage('assets/money-bills.svg');
  static const SvgGenImage plus = SvgGenImage('assets/plus.svg');
  static const SvgGenImage qrcode = SvgGenImage('assets/qrcode.svg');
  static const SvgGenImage rocket = SvgGenImage('assets/rocket.svg');
  static const SvgGenImage squareList = SvgGenImage('assets/square-list.svg');
  static const SvgGenImage stars = SvgGenImage('assets/stars.svg');
  static const SvgGenImage twitter = SvgGenImage('assets/twitter.svg');
  static const SvgGenImage user = SvgGenImage('assets/user.svg');
  static const SvgGenImage users = SvgGenImage('assets/users.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        bellFilled,
        bellOutlined,
        boltLightning,
        bookmark,
        circleEllipsisVertical,
        circleMicrophone,
        circleQuestion,
        envelopeDot,
        envelopeFilled,
        envelopeOutlined,
        gear,
        houseWindowFilled,
        houseWindowOutlined,
        lightbulbOn,
        magnifyingGlassFilled,
        magnifyingGlassOutlined,
        messageLines,
        microphoneFilled,
        microphoneOutlined,
        moneyBills,
        plus,
        qrcode,
        rocket,
        squareList,
        stars,
        twitter,
        user,
        users
      ];
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
