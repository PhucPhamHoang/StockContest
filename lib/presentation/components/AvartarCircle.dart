import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppImage.dart';

class AvatarCircle extends StatelessWidget {
  final dynamic path;
  final double? height;
  final double? width;
  final Color? color;
  final Color? backgroundColor;
  final BoxFit? fit;
  final double? padding;
  const AvatarCircle({
    Key? key,
    required this.path,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.backgroundColor,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainst) {
      var base = constrainst.maxHeight > constrainst.maxWidth
          ? constrainst.maxWidth
          : constrainst.maxHeight;
      return ClipOval(
        child: Container(
          color: backgroundColor,
          padding: EdgeInsets.all(padding ?? 20),
          child: AppImage(
            color: color,
            path: path,
            fit: fit ?? BoxFit.cover,
            height: height ?? base,
            width: width ?? base,
          ),
        ),
      );
    });
  }
}
