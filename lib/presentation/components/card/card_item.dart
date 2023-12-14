import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:oktoast/oktoast.dart';
import 'package:untitled/presentation/components/AppAsset.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppImage.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/text_form_field/AppTextFormField.dart';
import 'package:untitled/presentation/components/text_form_field/formatter/IntegerFormatter.dart';

enum CardItemType {
  normal,
  extend,
  checkbox,
  textField,
  custom,
}

class CardItem extends StatelessWidget {
  final dynamic title;
  final dynamic subtitle;
  final dynamic value;
  final dynamic subvalue;
  final dynamic avatar;
  final dynamic leading;
  final bool hasDivider;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool isNavigate;
  final bool isSelected;
  final void Function()? onTap;
  final CardItemType type;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final FocusNode? focusNode;
  final void Function()? onUnfocus;
  final void Function(String)? onSubmit;
  final TextEditingController? controller;
  final TextStyle? valueStyle;
  final bool canCopy;
  final String? hintText;
  final String? valueCopy;
  final TextAlign? textAlign;
  final TextInputType? textInputType;
  final bool readOnly;
  final List<TextInputFormatter>? formatter;
  final bool obscure;
  const CardItem({
    super.key,
    this.leading,
    this.avatar,
    required this.title,
    this.subtitle,
    this.value,
    this.subvalue,
    bool? hasDivider,
    bool? isNavigate,
    bool? isSelected,
    bool? canCopy,
    this.height,
    this.margin,
    this.onTap,
    this.padding,
    required this.type,
    this.backgroundColor,
    this.borderRadius,
    this.focusNode,
    this.onUnfocus,
    this.onSubmit,
    required this.controller,
    this.valueStyle,
    this.hintText,
    this.textAlign,
    this.textInputType,
    required this.readOnly,
    this.formatter,
    this.valueCopy,
    required this.obscure,
  })  : hasDivider = hasDivider ?? true,
        isNavigate = isNavigate ?? true,
        isSelected = isSelected ?? true,
        canCopy = canCopy ?? false,
        assert(title is Widget || title is String, 'title is Widget or String'),
        assert(subtitle is Widget || subtitle is String || title == null,
            'subtitle is Widget or String'),
        assert(avatar is Widget || avatar is String || avatar == null,
            'avatar is Widget or String'),
        assert(value is Widget || value is String || title == null,
            'value is Widget or String');

  const CardItem.normal(
      {super.key,
      this.title,
      this.value,
        this.subvalue,
      this.leading,
      this.avatar,
      bool? hasDivider,
      this.margin,
      bool? isNavigate,
      bool? canCopy,
      this.onTap,
      this.padding,
      this.valueStyle,
      this.valueCopy})
      : height = 48,
        hasDivider = hasDivider ?? false,
        isNavigate = isNavigate ?? false,
        type = CardItemType.normal,
        backgroundColor = null,
        borderRadius = null,
        isSelected = false,
        canCopy = canCopy ?? false,
        focusNode = null,
        onSubmit = null,
        onUnfocus = null,
        controller = null,
        hintText = null,
        textAlign = null,
        textInputType = null,
        formatter = null,
        readOnly = false,
        obscure = false,
        subtitle = null;

  const CardItem.custom(
      {super.key,
      this.title,
      this.value,
      this.leading,
      this.avatar,
      bool? hasDivider,
      this.margin,
      bool? isNavigate,
      bool? canCopy,
      this.onTap,
      this.padding,
      this.valueStyle,
      this.valueCopy})
      : height = 48,
        hasDivider = hasDivider ?? false,
        isNavigate = isNavigate ?? false,
        type = CardItemType.custom,
        backgroundColor = null,
        borderRadius = null,
        isSelected = false,
        canCopy = canCopy ?? false,
        focusNode = null,
        onSubmit = null,
        onUnfocus = null,
        controller = null,
        subvalue = null,
        hintText = null,
        textAlign = null,
        textInputType = null,
        formatter = null,
        readOnly = false,
        obscure = false,
        subtitle = null;

  const CardItem.extend({
    super.key,
    this.title,
    this.value,
    this.leading,
    this.avatar,
    this.subtitle,
    this.subvalue,
    bool? hasDivider,
    this.margin,
    bool? isNavigate,
    bool? canCopy,
    this.onTap,
    this.padding,
    this.valueStyle,
    this.valueCopy,
    double? height,
  })  : height = height ?? 61,
        isNavigate = isNavigate ?? false,
        type = CardItemType.extend,
        canCopy = canCopy ?? false,
        isSelected = false,
        focusNode = null,
        backgroundColor = null,
        borderRadius = null,
        onUnfocus = null,
        onSubmit = null,
        controller = null,
        hintText = null,
        textAlign = null,
        formatter = null,
        textInputType = null,
        readOnly = false,
        obscure = false,
        hasDivider = hasDivider ?? false;

  CardItem.checkBox(
      {super.key,
      this.title,
      this.subtitle,
      this.subvalue,
      bool? hasDivider,
      this.margin,
      bool? isNavigate,
      this.onTap,
      double? height,
      required this.isSelected,
      Color? backgroundColor,
      this.padding,
      this.borderRadius,
      this.valueStyle})
      : height = height ?? 61,
        isNavigate = isNavigate ?? false,
        hasDivider = hasDivider ?? false,
        canCopy = false,
        formatter = null,
        backgroundColor =
            backgroundColor ?? AppColor.gray2Dark.withOpacity(0.2),
        type = CardItemType.checkbox,
        focusNode = null,
        onUnfocus = null,
        onSubmit = null,
        controller = null,
        hintText = null,
        textInputType = null,
        textAlign = null,
        leading = null,
        obscure = false,
        avatar = null,
        readOnly = false,
        valueCopy = null,
        value = null;

  CardItem.textField(
      {super.key,
      this.title,
      this.subtitle,
      bool? hasDivider,
      this.margin,
      bool? isNavigate,
      this.onTap,
      double? height,
      Color? backgroundColor,
      this.borderRadius,
      required this.isSelected,
      this.padding,
      this.focusNode,
      this.onUnfocus,
      this.onSubmit,
      this.controller,
      this.hintText,
      this.valueStyle,
      this.subvalue,
      this.textAlign,
      this.textInputType,
      this.formatter,
      bool? obscure,
      bool? readOnly})
      : height = height ?? 61,
        isNavigate = isNavigate ?? false,
        hasDivider = hasDivider ?? false,
        canCopy = false,
        backgroundColor =
            backgroundColor ?? Color.fromRGBO(99, 99, 102, 1).withOpacity(0.2),
        type = CardItemType.textField,
        leading = null,
        avatar = null,
        obscure = obscure ?? false,
        readOnly = readOnly ?? false,
        valueCopy = null,
        value = null;

  Widget? _buildLeading() {
    if (leading is String) {
      return Text(
        leading,
        style: AppStyle.largeRegular.copyWith(color: AppColor.white),
      );
    }
    return leading;
  }

  Widget? _buildAvatar() {
    if (avatar is String) {
      return Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xffD9D9D9),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  blurRadius: 7.0,
                ),
              ],
            ),
            child: AppImage(
              path: avatar,
            )),
      );
    }
    return avatar;
  }

  Widget _buildTitle() {
    if (title is String) {
      return Text(
        title,
        style: AppStyle.largeRegular.copyWith(color: AppColor.white),
      );
    }
    return title;
  }

  Widget? _buildSubtitle() {
    if (subtitle is String) {
      return Text(
        subtitle,
        style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
      );
    }
    return subtitle;
  }

  Widget? _buildValue() {
    if (value is String) {
      return Text(
        value,
        style: valueStyle ??
            (subvalue == null
                ? AppStyle.largeRegular.copyWith(color: AppColor.grayDark)
                : AppStyle.medianRegular.copyWith(color: AppColor.grayDark)),
      );
    }
    if (type == CardItemType.checkbox && isSelected) {
      return AppImage(path: AppAsset.tickIcon);
    }
    return value;
  }

  Widget? _buildSubValue() {
    if (subvalue is String) {
      return Text(
        subvalue,
        style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
      );
    }
    return subvalue;
  }

  @override
  Widget build(BuildContext context) {
    final leadingWidget = _buildLeading();
    final avartarWidget = _buildAvatar();
    final titleWidget = _buildTitle();
    final subtitleWidget = _buildSubtitle();
    final valueWidget = _buildValue();
    final subvalueWidget = _buildSubValue();
    if (type == CardItemType.custom) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          children: [
            Text(title,
                style: AppStyle.largeRegular.copyWith(color: AppColor.white)),
            const SizedBox(width: 15),
            Expanded(
                child: Container(
              constraints: const BoxConstraints(minHeight: 48),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(value,
                      textAlign: TextAlign.right,
                      style: AppStyle.largeRegular
                          .copyWith(color: AppColor.grayDark)),
                ),
              ),
            ))
          ],
        ),
      );
    }
    return GestureDetector(
      onTap: isNavigate ? onTap : null,
      child: Center(
        child: Container(
          height: height,
          padding: padding ?? const EdgeInsets.only(right: 13),
          margin: margin ?? const EdgeInsets.only(left: 13),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
            border: hasDivider
                ? const Border(
                    bottom: BorderSide(
                      color: AppColor.gray2Dark,
                      width: 0.2,
                    ),
                  )
                : null,
          ),
          child: type == CardItemType.textField
              ? Row(
                  children: [
                    if (title != '')
                      subtitleWidget == null
                          ? Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: titleWidget,
                            )
                          : Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  titleWidget,
                                  subtitleWidget,
                                ],
                              ),
                            ),
                    Expanded(
                      child: Center(
                        child: AppTextFormField(
                          onTap: onTap,
                          readOnly: readOnly,
                          controller: controller,
                          fillColor: Colors.transparent,
                          isPassword: obscure,
                          borderColor: Colors.transparent,
                          textAlign: textAlign ?? TextAlign.center,
                          textStyle: AppStyle.largeRegular.copyWith(
                            color: AppColor.grayDark,
                          ),
                          keyboardType: textInputType ?? TextInputType.text,
                          focusNode: focusNode,
                          hint: hintText,
                          onUnfocus: onUnfocus,
                          inputFormatters: formatter ??
                              [
                                if (textInputType == TextInputType.number)
                                  IntegerFormatter()
                              ],
                          onSubmit: onSubmit,
                        ),
                      ),
                    ),
                  ],
                )
              : LayoutBuilder(builder: (context, constraint) {
                  return InkWell(
                    onTap: onTap,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (leadingWidget != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: leadingWidget,
                          ),
                        if (avartarWidget != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 11),
                            child: avartarWidget,
                          ),
                        valueWidget == null
                            ? Expanded(
                                child: subtitleWidget == null
                                    ? titleWidget
                                    : Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          titleWidget,
                                          subtitleWidget,
                                        ],
                                      ),
                              )
                            : subtitleWidget == null
                                ? titleWidget
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      titleWidget,
                                      subtitleWidget,
                                    ],
                                  ),
                        // if (valueWidget != null) InkWell(onTap: onTap, child: valueWidget),
                        Container(
                          constraints: const BoxConstraints(minWidth: 15),
                        ),
                        if (valueWidget != null)
                          if (subvalueWidget != null)
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    valueWidget,
                                    subvalueWidget,
                                  ],
                                ),
                              ),
                            )
                          else
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: valueWidget))
                        else if (subvalueWidget != null)
                          Expanded(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: subvalueWidget))
                        else
                          Container(),
                        if (isNavigate)
                          const Icon(
                            Icons.navigate_next,
                            color: AppColor.grayDark,
                          ),
                        if (canCopy)
                          SizedBox(
                            width: 28,
                            child: Material(
                              color: Colors.transparent,
                              type: MaterialType.circle,
                              clipBehavior: Clip.antiAlias,
                              borderOnForeground: true,
                              elevation: 0,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  Clipboard.setData(
                                    ClipboardData(
                                      text: valueCopy ?? value.toString(),
                                    ),
                                  );
                                  showToastWidget(
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25.0),
                                        color: Colors.black45,
                                      ),
                                      child: const Text('Đã sao chép'),
                                    ),
                                    position: ToastPosition.bottom,
                                  );
                                },
                                icon: const ImageIcon(
                                  AssetImage("assets/icon/copy_icon.png"),
                                  color: AppColor.orange,
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  );
                }),
        ),
      ),
    );
  }
}
