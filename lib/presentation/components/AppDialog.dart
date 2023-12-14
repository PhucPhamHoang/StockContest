import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

class AppDialog extends StatelessWidget {
  final Widget child;
  final BuildContext context;
  final Function? onClose;
  final sizeClearIcon = const Size(40, 40);

  const AppDialog(
      {Key? key, required this.context, required this.child, this.onClose})
      : super(key: key);

  static Future<T?> asyncShowDialog<T>(
      BuildContext context,
      Widget layoutDialog, {
        bool barrierDismissible = false,
        bool useRootNavigator = false,
      }) async {
    return await showGeneralDialog<T>(
      context: context,
      useRootNavigator: useRootNavigator,
      barrierLabel: "App Dialog",
      barrierDismissible: barrierDismissible,
      // barrierColor: AppColor.white,
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) {
        return layoutDialog;
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
              parent: Tween<double>(begin: 0.0, end: 1).animate(animation),
              curve: Curves.ease,
              reverseCurve: Curves.easeOutBack),
          child: child,
        );
      },
    );
  }

  static Future<T?> showDialogCupertino<T>(
      {required Widget child, required BuildContext context}) {
    return showCupertinoModalPopup<T>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  Future<T?> showDialogCustom<T>({
    required BuildContext context,
    required List<T> data,
    T? initValue,
    required Widget Function(T) buildChild,
  }) {
    return showDialogCupertino(
        child: CupertinoPicker(
          magnification: 1.22,
          squeeze: 1.2,
          useMagnifier: true,
          itemExtent: 32,
          // This sets the initial item.
          scrollController: FixedExtentScrollController(
            initialItem: 0,
          ),
          // This is called when selected item is changed.
          onSelectedItemChanged: (int selectedItem) {
            Navigator.of(context).pop(data[selectedItem]);
          },
          children: List<Widget>.generate(data.length, (int index) {
            return buildChild(data[index]);
          }),
        ),
        context: context);
  }

  static Future<T?> showAppCupertinoDialog<T>({
    required BuildContext context,
    String? title,
    String? content,
    String? cancelActionText,
    String? defaultActionText,
    bool isCancel = false,
    void Function()? onPressedDefault,
    void Function()? onPressedCancel,
  }) {
    var _title = title;
    var _content = content;
    return showCupertinoDialog<T>(
      context: context,
      builder: (context) => Theme(
        data: ThemeData.dark(),
        child: CupertinoAlertDialog(
          title: _title != null
              ? Text(
            _title,
            style: AppStyle.largeMedium.copyWith(
              color: AppColor.white,
            ),
          )
              : null,
          content: _content != null
              ? Text(
            _content,
            style: AppStyle.medianRegular.copyWith(
              color: AppColor.white,
            ),
          )
              : null,
          actions: <Widget>[
            if (isCancel)
              CupertinoDialogAction(
                onPressed: () {
                  if (onPressedCancel != null) {
                    onPressedCancel.call();
                  }

                  Navigator.of(context).pop(false);
                },
                child: Text(
                  cancelActionText ?? 'Huỷ',
                  style: AppStyle.hugeRegular.copyWith(color: AppColor.redDark),
                ),
              ),
            CupertinoDialogAction(
              onPressed: () {
                if (onPressedDefault != null) {
                  onPressedDefault.call();
                }

                Navigator.of(context).pop(true);
              },
              child: Text(
                defaultActionText ?? 'Đồng ý',
                style: AppStyle.hugeRegular.copyWith(color: AppColor.blueDark),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Future<T?> confirmDialog<T>(
      BuildContext context, {
        bool barrierDismissible = false,
        String? title,
        Widget? body,
        TextAlign? messageAlign,
        String? confirmButtonText,
        String? rejectButtonText,
        Function? confirmButtonFunction,
        Function? rejectButtonFunction,
      }) async {
    return await asyncShowDialog(
      context,
      AppDialog(
        context: context,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  title,
                  maxLines: 10,
                  textAlign: TextAlign.center,
                  style: AppStyle.largeBold,
                ),
              ),
            if (body != null)
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: body,
              ),
            const SizedBox(height: 15),
            Row(
              children: [
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 10),
                //     child: AppButton.orange(
                //       childWidget: Text(confirmButtonText ?? 'Xác thực ngay',
                //           style: AppStyle.medianBold
                //               .copyWith(color: AppColor.white)),
                //       onPress: () {
                //         if (confirmButtonFunction != null) {
                //           confirmButtonFunction.call();
                //         } else {
                //           Navigator.of(context).maybePop(true);
                //         }
                //       },
                //     ),
                //   ),
                // ),
                const SizedBox(height: 15),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 10),
                //     child: AppButton.white(
                //       childWidget: Text(rejectButtonText ?? 'Quay lại',
                //           style: AppStyle.medianRegular
                //               .copyWith(color: AppColor.blue)),
                //       onPress: () {
                //         if (rejectButtonFunction != null) {
                //           rejectButtonFunction.call();
                //         } else {
                //           Navigator.of(context).maybePop(true);
                //         }
                //       },
                //     ),
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 29),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(10),
            child: child),
      ),
    );
  }
}
