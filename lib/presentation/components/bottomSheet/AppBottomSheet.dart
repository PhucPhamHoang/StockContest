import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/bottomSheet/CameraBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/CameraImageBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/ConfirmBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/OptionBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/PickerBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/SelectableBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/SelectableBottomSheetContest.dart';
import 'package:untitled/presentation/components/bottomSheet/UploadBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/enum.dart';

class AppBottomSheet {
  static Future<T?> _showAppBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    SizeBottomSheet sizeBottomSheet = SizeBottomSheet.max,
    Color? backgroundColor,
    bool? isDismissible,
    bool? isScrollController,
    bool? enableDrag,
    bool? useRootNavigator,
    Color? barrierColor,
  }) async {
    return await showModalBottomSheet<T>(
        backgroundColor: backgroundColor,
        isDismissible: isDismissible ?? true,
        isScrollControlled: isScrollController ?? true,
        enableDrag: enableDrag ?? true,
        useRootNavigator: useRootNavigator ?? true,
        barrierColor: barrierColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: ((context) => SafeArea(child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              constraints: constraints.copyWith(
                  maxHeight: constraints.maxHeight * 0.9),
              child: Column(
                  mainAxisSize: sizeBottomSheet == SizeBottomSheet.min
                      ? MainAxisSize.min
                      : MainAxisSize.max,
                  children: [
                    Expanded(child: child),
                  ]),
            );
          },
        ))));
  }

  static Future<T?> confirmBottomSheet<T>({
    required BuildContext context,
    required Function onConfirm,
    String? textButton,
    TextStyle? styleText,
    Widget? title,
    Widget? body,
    bool? isDimissible,
    bool? enableDrag,
    void Function()? onTap,
    Function(DragUpdateDetails)? onDrag,
  }) {
    return _showAppBottomSheet<T>(
      isDismissible: isDimissible,
      enableDrag: enableDrag,
      context: context,
      sizeBottomSheet: SizeBottomSheet.min,
      child: GestureDetector(
        onVerticalDragUpdate: onDrag,
        onTap: onTap,
        behavior: onDrag != null
            ? HitTestBehavior.opaque
            : HitTestBehavior.deferToChild,
        child: ConfirmBottomSheet(
          onConfirm: onConfirm,
          textButton: textButton,
          styleText: styleText,
          title: title,
          body: body,
        ),
      ),
    );
  }

  static Future<T?> expandedBottomSheet<T>({
    required BuildContext context,
    required Function onConfirm,
    String? textButton,
    TextStyle? styleText,
    Widget? child,
    Widget? expanded,
  }) async {
    await confirmBottomSheet<T>(
      isDimissible: true,
      enableDrag: false,
      onTap: () async {
        await confirmBottomSheet(
          context: context,
          onConfirm: onConfirm,
          body: expanded,
        );
      },
      onDrag: (details) async {
        var delta = details.primaryDelta;
        if (delta != null) {
          if (delta > 3) {
            await confirmBottomSheet(
              context: context,
              onConfirm: onConfirm,
              body: expanded,
            );
          }
        }
      },
      context: context,
      onConfirm: () {},
      title: child,
    );
  }

  static Future asyncShowCameraScreen<T>({
    required BuildContext context,
    // required List<CameraAction> listAction,
    Key? key,
  }) async {
    // var hasPermission = await Permission.camera.status;
    // if (!hasPermission.isGranted) {
    //   hasPermission = await Permission.camera.request();
    //   if (!hasPermission.isGranted) {
    //     openAppSettings();
    //     return null;
    //   }
    // }
    return await showModalBottomSheet<T>(
        context: context,
        isDismissible: false,
        isScrollControlled: true,
        useRootNavigator: true,
        // useSafeArea: true,
        backgroundColor: Colors.black54,
        builder: (context) => CameraBottomSheet());
  }

  static Future<T?> uploadImageScreen<T>({
    required BuildContext context,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: AppColor.primaryBlue,
      builder: (context) => UploadBottomSheet(),
    );
  }

  static Future<T?> customButtomSheet<T>({
    required BuildContext context,
    required Widget child,
    bool? isDimissible,
    bool? enableDrag,
    void Function()? onTap,
    Function(DragUpdateDetails)? onDrag,
  }) {
    return _showAppBottomSheet<T>(
      isDismissible: isDimissible,
      enableDrag: enableDrag,
      backgroundColor: AppColor.gray6Dark,
      context: context,
      sizeBottomSheet: SizeBottomSheet.max,
      child: child,
    );
  }

  static Future<T?> showImagePickerBottomSheet<T>({
    required BuildContext context,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      useRootNavigator: true,
      useSafeArea: true,
      backgroundColor: AppColor.transparent,
      builder: (context) => PickerBottomSheet(),
    );
  }

  static Future<T?> showOptionBottomSheet<T>({
    required BuildContext context,
    required List<OptionData> options,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      useRootNavigator: true,
      useSafeArea: true,
      backgroundColor: AppColor.transparent,
      builder: (context) => OptionBottomSheet(
        options: options,
      ),
    );
  }

  static Future<T?> showCameraImageBottomSheet<T>({
    required BuildContext context,
    required List<CameraAction> listAction,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      useRootNavigator: true,
      useSafeArea: false,
      backgroundColor: AppColor.transparent,
      builder: (context) => CameraImageBottomSheet(
        listAction: listAction,
      ),
    );
  }

  static Future<T?> showSelectableData<T>({
    required BuildContext context,
    required List<T> listItems,
    String? title,
  }) {
    return _showAppBottomSheet<T>(
      context: context,
      isDismissible: false,
      isScrollController: true,
      useRootNavigator: true,
      // useSafeArea: true,
      backgroundColor: AppColor.gray6Dark,

      child: SelectableBottomSheet<T>(
        title: title,
        listItems: listItems,
        isSearch: true,
      ),
    );
  }

  static Future<T?> showSelectableContest<T>({
    required BuildContext context,
    required List<T> listItems,
    String? title,
  }) {
    return _showAppBottomSheet<T>(
      context: context,
      isDismissible: false,
      isScrollController: true,
      useRootNavigator: true,
      // useSafeArea: true,
      backgroundColor: AppColor.gray6Dark,

      child: SelectableBottomSheetContest<T>(
        title: title,
        listItems: listItems,
        isSearch: true,
      ),
    );
  }
  //
  // static Future<T?> showOtpBottomSheet<T>({
  //   required BuildContext context,
  //   required String requestId,
  //   String? description,
  //   String? trailing,
  //   Future<bool> Function(dynamic, BuildContext)? onSuccess,
  //   Future<bool> Function(String error)? onError,
  //   void Function(OTPVerifyBloc?)? onSend,
  //   void Function(OTPVerifyBloc?, String opt)? onConfirm,
  //   bool? notResend,
  //   void Function(BuildContext)? onTrailing,
  //   bool? isCount,
  // }) {
  //   return _showAppBottomSheet<T>(
  //     backgroundColor: AppColor.gray6Dark,
  //     context: context,
  //     sizeBottomSheet: SizeBottomSheet.max,
  //     child: OTPBottomSheet(
  //       description: description,
  //       trailing: trailing,
  //       onSend: onSend,
  //       onConfirm: onConfirm,
  //       requestId: requestId,
  //       onError: onError,
  //       onSuccess: onSuccess,
  //       isCount: isCount,
  //       onTrailing: onTrailing,
  //       notResend: notResend,
  //     ),
  //   );
  // }
}
