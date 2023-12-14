import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

class UploadBottomSheet extends StatefulWidget {
  const UploadBottomSheet({
    super.key,
  });

  @override
  State<UploadBottomSheet> createState() => _UploadBottomSheetState();
}

class _UploadBottomSheetState extends State<UploadBottomSheet>
    with WidgetsBindingObserver {
  int indexAction = 0;
  List<Map<String, dynamic>> media = [
    {'type': 'camera'}
  ];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      PhotoManager.requestPermissionExtend().then((value) {
        if (value.hasAccess) {
          _displayImages();
        } else {
          // Permission.photos.request();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      // border
      // color: AppColor.white,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(15),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Bạn vừa cấp quyền cho Vick một vài ảnh nhất định',
                      style:
                      AppStyle.largeMedium.copyWith(color: AppColor.black)),
                  WidgetSpan(
                      child: InkWell(
                        onTap: () async {
                          openAppSettings();
                        },
                        child: Text('Thay đổi quyền tại đây',
                            style: AppStyle.largeMedium
                                .copyWith(color: AppColor.blue)),
                      ))
                ]),
              )),
          SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 300,
            child: GridView.builder(
                itemCount: media.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return attachmentWidget(media[index], (int index) {
                    setState(() {
                      media.removeAt(index);
                    });
                  }, _getPicture);
                }),
          ),
        ],
      ),
    );
  }

  void _getPicture(File file) async {
    var data = await File(file.path).readAsBytes();
    Navigator.of(context).pop(data);
  }

  Widget cameraWidget() {
    return Container(
      color: Colors.white,
      child: const Center(
          child: Icon(
            Icons.camera_alt,
            color: Colors.black,
            size: 50,
          )),
    );
  }

  Widget attachmentWidget(Map<String, dynamic> attachment,
      Function deleteAttachment, void Function(File file)? onTap) {
    return GestureDetector(
      onTap: () async {
        // attachment["type"] == "image"
        //     ? onTap?.call(attachment["file"])
        //     : await AppBottomSheet.asyncShowCameraScreen(
        //         context: context,
        //         listAction: const [
        //             CameraAction(title: '', actionDescription: '')
        //           ]);
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        margin: const EdgeInsets.only(right: 10),
        child: attachment["type"] == "image"
            ? Align(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.file(
              attachment["file"],
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
        )
            : cameraWidget(),
      ),
    );
  }

  void _displayImages() async {
    List<AssetEntity> images = await PhotoManager.getAssetListRange(
        start: 0, end: 10, type: RequestType.image);

    // Create a list of image file paths
    for (var image in images) {
      var file = await image.file;
      if (file != null) {
        media.add({"type": "image", "file": file});
      }
    }

    // Display the images
    setState(() {
      // Update your UI state with the imagePaths
      // For example, assign imagePaths to a variable and use it in a GridView or ListView
    });
  }
}
