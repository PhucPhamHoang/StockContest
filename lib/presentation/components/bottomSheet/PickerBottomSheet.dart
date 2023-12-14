import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hive/hive.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/bottomSheet/AppBottomSheet.dart';
import 'package:untitled/presentation/components/card/AppDivider.dart';

class PickerBottomSheet<T> extends StatefulWidget {
  // final Widget? title;
  // final Widget? body;
  // final Function onConfirm;
  // final String? textButton;
  // final TextStyle? styleText;
  const PickerBottomSheet({
    super.key,
    // this.title,
    // this.body,
    // required this.onConfirm,
    // this.textButton,
    // this.styleText,
  });

  @override
  State<PickerBottomSheet<T>> createState() => _PickerBottomSheetState<T>();
}

class _PickerBottomSheetState<T> extends State<PickerBottomSheet<T>> {
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
            child: Column(children: [
              buildItem(
                  title: 'Chụp ảnh',
                  onTap: () async {
                    var image = await AppBottomSheet.asyncShowCameraScreen(
                      context: context,
                      // listAction: [
                      //   CameraAction(title: '', actionDescription: '')
                      // ],
                    );
                    if (image != null) {
                      Navigator.of(context).pop(image);
                    }
                  }),
              const AppDivider(
                thickness: 0.2,
              ),
              buildItem(
                  onTap: () {
                    ImagePicker()
                        .pickImage(source: ImageSource.gallery)
                        .then((XFile? imageGallery) async {
                      if (imageGallery != null) {
                        var imageCrop = await ImageCropper().cropImage(
                            uiSettings: [
                              AndroidUiSettings(
                                  toolbarTitle: 'Dịch chuyển và chia tỉ lệ',
                                  hideBottomControls: true,
                                  showCropGrid: false,
                                  initAspectRatio:
                                  CropAspectRatioPreset.square),
                              IOSUiSettings(
                                  rotateButtonsHidden: true,
                                  resetButtonHidden: true,
                                  aspectRatioPickerButtonHidden: true,
                                  doneButtonTitle: 'Chọn',
                                  title: 'Dịch chuyển và chia tỉ lệ',
                                  cancelButtonTitle: 'Huỷ')
                            ],
                            cropStyle: CropStyle.circle,
                            sourcePath: imageGallery.path);
                        if (imageCrop != null) {
                          Navigator.of(context).pop(imageCrop.path);
                        }
                      }
                    });
                  },
                  title: 'Chọn ảnh'),
            ]),
          ),
          const SizedBox(
            height: 11,
          ),
          buildItem(
              onTap: () {
                Navigator.of(context).pop();
              },
              title: 'Huỷ',
              borderRadius: BorderRadius.circular(10)),
        ],
      ),
    );
  }

  Widget buildItem({
    BorderRadius? borderRadius,
    bool? hasDivider,
    required String title,
    void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 49,
          decoration: BoxDecoration(
            color: AppColor.gray4Dark,
            borderRadius: borderRadius,
            border: hasDivider == true
                ? const Border(
              bottom: BorderSide(
                color: AppColor.gray2Dark,
                width: 0.2,
              ),
            )
                : null,
          ),
          child: Center(
            child: Text(title,
                style: AppStyle.hugeRegular.copyWith(color: AppColor.blueDark)),
          )),
    );
  }
}
