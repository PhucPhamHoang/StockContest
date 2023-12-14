import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum ImageType {
  svg,
  svgNetwork,
  path,
  pathNetwork,
  uInt8List,
  file,
}

extension ImageTypeEx on ImageType {
  static ImageType fromValue(value) {
    if (value is Uint8List) {
      return ImageType.uInt8List;
    } else if (value is File) {
      return ImageType.file;
    } else if (value is String) {
      var isSvg = value.endsWith('svg');
      var isNetwork = value.startsWith('http');
      if (isSvg) {
        if (isNetwork) {
          return ImageType.svgNetwork;
        } else {
          return ImageType.svg;
        }
      } else {
        if (isNetwork) {
          return ImageType.pathNetwork;
        } else {
          return ImageType.path;
        }
      }
    } else {
      return ImageType.path;
    }
  }
}

class AppImage extends StatelessWidget {
  final dynamic path;
  final ImageType type;
  final BoxFit? fit;
  final AlignmentGeometry? alignmentGeometry;
  final Color? color;
  final double? width;
  final double? height;
  AppImage({
    Key? key,
    required this.path,
    this.fit,
    this.alignmentGeometry,
    this.color,
    this.width,
    this.height,
  })  : type = ImageTypeEx.fromValue(path),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ImageType.svg:
        return SvgPicture.asset(
          path as String,
          width: width,
          height: height,
          color: color,
          alignment: alignmentGeometry ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
        );
      case ImageType.svgNetwork:
        return SvgPicture.network(
          path as String,
          width: width,
          height: height,
          color: color,
          alignment: alignmentGeometry ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
        );
      case ImageType.path:
        return Image.asset(
          path as String,
          width: width,
          height: height,
          color: color,
          alignment: alignmentGeometry ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
        );
      case ImageType.pathNetwork:
        return Image.network(
          path as String,
          width: width,
          height: height,
          color: color,
          alignment: alignmentGeometry ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
        );
      case ImageType.uInt8List:
        return Image.memory(
          path as Uint8List,
          width: width,
          height: height,
          color: color,
          alignment: alignmentGeometry ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
        );
      case ImageType.file:
        return Image.file(
          path as File,
          width: width,
          height: height,
          color: color,
          alignment: alignmentGeometry ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
        );
    }
  }
}
