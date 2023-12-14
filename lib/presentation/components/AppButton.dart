import 'dart:core';

import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';


class AppButton extends StatelessWidget {
  final LinearGradient? gradient;
  final Widget childWidget;
  final void Function() onPress;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final bool isLoading;
  final double height;
  final double? width;
  final double horizontalPadding;
  final Color? loadingColor;
  final bool needShadow;
  final bool isDisable;
  final Color? backgroundColor;
  const AppButton({
    Key? key,
    required this.gradient,
    required this.childWidget,
    required this.onPress,
    double? borderRadius,
    double? borderWidth,
    Color? borderColor,
    bool? isLoading,
    double? height,
    this.width,
    double? horizontalPadding,
    this.loadingColor,
    bool? needShadow,
    this.isDisable = false,
    this.backgroundColor,
  })  : borderRadius = borderRadius ?? 50,
        borderWidth = borderWidth ?? 0,
        borderColor = borderColor ?? Colors.transparent,
        isLoading = isLoading ?? false,
        height = height ?? 36,
        horizontalPadding = horizontalPadding ?? 16,
        needShadow = needShadow ?? true,
        super(key: key);

  AppButton.defaultButton({
    Key? key,
    required String text,
    required this.onPress,
    double? borderRadius,
    TextStyle? style,
    bool? isLoading,
    double? height,
    Color? backgroundColor,
  })  : borderRadius = borderRadius ?? 50,
        isLoading = isLoading ?? false,
        height = height ?? 25,
        horizontalPadding = 16,
        needShadow = true,
        childWidget = Text(
          text,
          style: style ?? AppStyle.normalMedium.copyWith(color: AppColor.white),
        ),
        borderWidth = 0,
        borderColor = Colors.transparent,
        loadingColor = null,
        width = null,
        gradient = null,
        isDisable = false,
        backgroundColor = backgroundColor ?? AppColor.orange,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: gradient,
        color: backgroundColor,
        boxShadow: [
          needShadow == true
              ? const BoxShadow(
            color: Color(0x1a000000),
            spreadRadius: 0,
            blurRadius: 20,
            offset: Offset(0, 10), // changes position of shadow
          )
              : const BoxShadow()
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        ),
        onPressed: isLoading ? () {} : onPress,
        child: isLoading
            ? SizedBox(
          width: 10,
          height: 10,
          child: CircularProgressIndicator(
            color: loadingColor ?? AppColor.orange,
            strokeWidth: 2,
          ),
        )
            : childWidget,
      ),
    );
  }
}
