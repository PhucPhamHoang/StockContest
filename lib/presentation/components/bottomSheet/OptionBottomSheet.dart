import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hive/hive.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/card/AppDivider.dart';

class OptionBottomSheet<T> extends StatefulWidget {
  // final Widget? title;
  // final Widget? body;
  // final Function onConfirm;
  // final String? textButton;
  // final TextStyle? styleText;
  final List<OptionData> options;
  const OptionBottomSheet({
    Key? key,
    // this.title,
    // this.body,
    // this.textButton,
    // this.styleText,
    required this.options,
  }) : super(key: key);

  @override
  State<OptionBottomSheet<T>> createState() => _OptionBottomSheetState<T>();
}

class _OptionBottomSheetState<T> extends State<OptionBottomSheet<T>> {
  bool isExpanded = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var _title = widget.title;
    // var _body = widget.body;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
                children: List.generate(widget.options.length, (index) {
                  var item = widget.options[index];
                  return buildItem(
                      option: item,
                      hasDivider: index != (widget.options.length - 1));
                })),
          ),
          const SizedBox(
            height: 11,
          ),
          buildItem(
              option: OptionData(
                onTap: () {
                  Navigator.of(context).pop();
                },
                title: 'Huỷ',
              ),
              borderRadius: BorderRadius.circular(10)),
        ],
      ),
    );
  }

  Widget buildItem({
    BorderRadius? borderRadius,
    bool? hasDivider,
    required OptionData option,
  }) {
    return InkWell(
      onTap: option.onTap,
      child: Column(
        children: [
          Container(
              height: 49,
              decoration: BoxDecoration(
                color: AppColor.gray4Dark,
                borderRadius: borderRadius,
              ),
              child: Center(
                child: Text(option.title,
                    style: AppStyle.hugeRegular
                        .copyWith(color: AppColor.blueDark)),
              )),
          if (hasDivider == true)
            const AppDivider(
              thickness: 0.2,
            )
        ],
      ),
    );
  }
}

class OptionData {
  final String title;
  final void Function()? onTap;
  OptionData({
    required this.title,
    this.onTap,
  });
}
