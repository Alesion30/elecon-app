/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// Flutter imports:
import 'package:flutter/widgets.dart';

class $AssetsImageGen {
  const $AssetsImageGen();

  AssetGenImage get elevatorOver =>
      const AssetGenImage('assets/image/elevator-over.png');
  AssetGenImage get elevator0 =>
      const AssetGenImage('assets/image/elevator0.png');
  AssetGenImage get elevator1 =>
      const AssetGenImage('assets/image/elevator1.png');
  AssetGenImage get elevator2 =>
      const AssetGenImage('assets/image/elevator2.png');
  AssetGenImage get elevator3 =>
      const AssetGenImage('assets/image/elevator3.png');
  AssetGenImage get elevator4 =>
      const AssetGenImage('assets/image/elevator4.png');
  AssetGenImage get elevator5 =>
      const AssetGenImage('assets/image/elevator5.png');
  AssetGenImage get icon => const AssetGenImage('assets/image/icon.png');
  AssetGenImage get warning => const AssetGenImage('assets/image/warning.png');
}

class Assets {
  Assets._();

  static const $AssetsImageGen image = $AssetsImageGen();
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
