import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppAsset.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppImage.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/CustomDropDownButton.dart';

class AppDropDownButton<T> extends StatefulWidget {
  final List<DropDownData<T>> listData;
  final bool Function(DropDownData<T>? data)? onChange;
  final String? hintText;
  final Widget? Function(DropDownData<T>? data)? content;
  final bool firstDefault;
  final bool disableOne;
  const AppDropDownButton(
      {Key? key,
        required this.listData,
        this.onChange,
        this.hintText,
        this.content,
        bool? disableOne,
        bool? firstDefault})
      : firstDefault = firstDefault ?? true,
        disableOne = disableOne ?? true,
        super(key: key);

  @override
  State<AppDropDownButton> createState() => AppDropDownButtonState<T>();
}

class AppDropDownButtonState<T> extends State<AppDropDownButton<T>> {
  DropDownData<T>? _value;
  @override
  void initState() {
    super.initState();
    if (widget.listData.isNotEmpty && widget.firstDefault) {
      _value = widget.listData.first;
    }
  }

  void setValue(DropDownData<T>? value) {
    setState(() {
      _value = value;
    });
  }

  T? get value {
    return _value?.data;
  }

  @override
  Widget build(BuildContext context) {
    final length = widget.listData.length;
    if (widget.listData.isNotEmpty && _value == null && widget.firstDefault) {
      _value = widget.listData.first;

    }
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.gray2Dark.withOpacity(0.2)),
      child: DropdownButtonHideUnderlineCustom(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButtonCustom<DropDownData<T>>(
            dropdownColor: AppColor.gray4Dark,
            hint: buildContent(),
            borderRadius: BorderRadius.circular(10),
            icon: length > 1
                ? Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: AppColor.gray2Dark.withOpacity(0.2)),
                child: const Icon(Icons.arrow_drop_down))
                : Container(),
            isExpanded: true,
            iconSize: 30.0,
            style: AppStyle.medianRegular.copyWith(color: AppColor.white),
            items: List.generate(widget.listData.length, (index) {
              var val = widget.listData[index];
              return DropdownMenuItemCustom<DropDownData<T>>(
                hasDivider: index != (widget.listData.length - 1),
                value: val,
                child: Row(
                  children: [
                    Expanded(
                        child: widget.content?.call(val) ?? Text(val.text)),
                    if (val.text == _value?.text)
                      AppImage(path: AppAsset.tickIcon),
                  ],
                ),
              );
            }),
            onChanged: length > 1 || !widget.disableOne
                ? (val) {
              var result = widget.onChange?.call(val);
              if (result != true) {
                setState(
                      () {
                    _value = val;
                  },
                );
              }
            }
                : null,
          ),
        ),
      ),
    );
    ;
  }

  Widget buildContent() {
    return widget.content?.call(_value) ??
        (_value != null
            ? Text(
          _value?.text ?? '',
          style: AppStyle.medianRegular.copyWith(color: AppColor.white),
        )
            : Text(
          widget.hintText ?? '',
          style: AppStyle.largeRegular
              .copyWith(color: AppColor.grayDark.withOpacity(0.7)),
        ));
  }
}

class DropDownData<T> {
  String text;
  T data;
  DropDownData({
    required this.text,
    required this.data,
  });
}
