import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:untitled/presentation/components/AppConstant.dart';

class AppCard extends StatelessWidget {
  final Color? backgroundColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? height;
  // final String? backgroundImage;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;

  const AppCard(
      {super.key,
      this.backgroundColor,
      this.child,
      this.padding,
      this.margin,
      // this.backgroundImage,
      this.borderRadius,
      this.boxShadow,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.background,
        // image: DecorationImage(
        //   image:
        // ),
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppConstant.borderRadius),
        boxShadow: boxShadow ??
            const [
              BoxShadow(
                color: Color(0x0f000000),
                blurRadius: 20.0,
              ),
            ],
      ),
      child: child,
    );
  }
}
