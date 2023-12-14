import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppColor.dart';
class AppDivider extends StatelessWidget {
  final Color? color;
  final double? thickness;
  final double? height;
  const AppDivider({super.key, this.color, this.thickness, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: Divider(
        color: color ?? AppColor.blackTextLight,
        thickness: thickness ?? 0.5,
        height: height ?? 0.5,
      ),
    );
  }
}
