import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

class AppSearchTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function()? onSuffixTap;
  final void Function()? onDone;
  final String? placeHolder;
  const AppSearchTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.onTap,
    this.onChanged,
    this.onSuffixTap,
    this.onDone,
    this.placeHolder,
  });

  @override
  State<AppSearchTextField> createState() => _AppSearchTextFieldState();
}

class _AppSearchTextFieldState extends State<AppSearchTextField> {
  bool isFilter = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Builder(builder: (context) {
            return CupertinoSearchTextField(
              placeholder: widget.placeHolder,
              controller: widget.controller,
              focusNode: widget.focusNode,
              style: AppStyle.largeRegular.copyWith(color: AppColor.white),
              onTap: () {
                setState(() {
                  isFilter = true;
                });
                widget.onTap?.call();
              },
              onChanged: widget.onChanged,
              onSuffixTap: widget.onSuffixTap,
            );
          }),
        ),
        if (isFilter)
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  isFilter = false;
                });
                widget.onDone?.call();
              },
              child: Text(
                'Xong',
                style: AppStyle.largeRegular.copyWith(
                  color: AppColor.orange,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
