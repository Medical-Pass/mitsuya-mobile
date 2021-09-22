/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get appbar3x =>
      const AssetGenImage('assets/images/appbar-3x.png');
  AssetGenImage get appbar => const AssetGenImage('assets/images/appbar.png');
  AssetGenImage get appbarPart =>
      const AssetGenImage('assets/images/appbar_part.png');
  AssetGenImage get calculator =>
      const AssetGenImage('assets/images/calculator.png');
  AssetGenImage get icon1024 =>
      const AssetGenImage('assets/images/icon1024.png');
  AssetGenImage get launchIcon1024x1024 =>
      const AssetGenImage('assets/images/launch_icon-1024x1024.png');
  AssetGenImage get logo04Middle =>
      const AssetGenImage('assets/images/logo04-middle.png');
  AssetGenImage get logo04 => const AssetGenImage('assets/images/logo04.png');
  AssetGenImage get memberCard =>
      const AssetGenImage('assets/images/member_card.png');
  AssetGenImage get qrcode => const AssetGenImage('assets/images/qrcode.png');
  AssetGenImage get rirekisho =>
      const AssetGenImage('assets/images/rirekisho.png');
  AssetGenImage get sample => const AssetGenImage('assets/images/sample.png');
  AssetGenImage get sample01 =>
      const AssetGenImage('assets/images/sample01.png');
  AssetGenImage get undrawAnalyticsReDkf81 =>
      const AssetGenImage('assets/images/undraw_Analytics_re_dkf81.png');
  AssetGenImage get undrawProfileDataReV81r1 =>
      const AssetGenImage('assets/images/undraw_Profile_data_re_v81r1.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
