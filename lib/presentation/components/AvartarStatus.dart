import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AvartarCircle.dart';

class AvatarStatus extends StatelessWidget {
  final String image;
  final Widget? status;
  final Color? backgroundColor;
  final double? padding;
  const AvatarStatus(
      {Key? key,
        required this.image,
        this.status,
        this.backgroundColor,
        this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var statusWidget = status;

    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          AvatarCircle(
            path: image,
            fit: BoxFit.cover,
            backgroundColor: backgroundColor,
            padding: padding,
          ),
          if (statusWidget != null)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  height: constraints.maxWidth / 4,
                  width: constraints.maxWidth / 4,
                  child: statusWidget),
            )
        ],
      );
    });
  }
}
