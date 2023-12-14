import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppColor.dart';

class ConfirmBottomSheet<T> extends StatefulWidget {
  final Widget? title;
  final Widget? body;
  final Function onConfirm;
  final String? textButton;
  final TextStyle? styleText;
  const ConfirmBottomSheet({
    super.key,
    this.title,
    this.body,
    required this.onConfirm,
    this.textButton,
    this.styleText,
  });

  @override
  State<ConfirmBottomSheet<T>> createState() => _ConfirmBottomSheetState<T>();
}

class _ConfirmBottomSheetState<T> extends State<ConfirmBottomSheet<T>> {
  bool isExpanded = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _title = widget.title;
    var _body = widget.body;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                height: 5,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.blackTextLight,
                ),
              ),
            ),
          ),
          if (_title != null) _title,
          if (_body != null) ...[
            _body,
            // AppButton.green(
            //     childWidget: Text(
            //       'Xác nhận',
            //       style: AppStyle.normalBold.copyWith(
            //           fontWeight: FontWeight.w900, color: AppColor.white),
            //     ),
            //     onPress: () {
            //       widget.onConfirm.call();
            //     }),
          ]
        ],
      ),
    );
  }
}
