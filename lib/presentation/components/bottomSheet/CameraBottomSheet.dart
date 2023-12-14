import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

List<CameraDescription> _cameras = <CameraDescription>[];

class CameraBottomSheet extends StatefulWidget {
  const CameraBottomSheet({
    Key? key,
  }) : super(key: key);
  @override
  State createState() => CameraBottomSheetState();
}

class CameraBottomSheetState extends State<CameraBottomSheet>
    with WidgetsBindingObserver {
  CameraController? controller;
  var flashMode = FlashMode.off;
  double? cameraSize;
  bool isProcessing = false;
  late MediaQueryData media;
  double heightCamera = 0;
  int indexAction = 0;
  double paddingTop = 50;
  CameraLensDirection currentCamera = CameraLensDirection.back;

  @override
  void initState() {
    topOffsetRectangle = 130;
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (_cameras.isEmpty) _cameras = await availableCameras();
      onNewCameraSelected(_cameras[0]);
    });
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      onNewCameraSelected(cameraController.description);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    media = MediaQuery.of(context);
    topOffsetRectangle = 50 + paddingTop;
    if (controller == null) return Container();
    return Scaffold(
      backgroundColor: AppColor.black.withOpacity(0.7),
      body: Stack(
        children: [
          SizedBox(
            width: media.size.width,
            height: media.size.height,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: SizedBox(
                width: media.size.width,
                child: AspectRatio(
                  aspectRatio: 1 / controller!.value.aspectRatio,
                  child: CameraWidget(
                    controller: controller,
                    child: ClipPath(
                      clipper: CutCircleClipper(),
                      child: Container(
                        color: AppColor.black.withOpacity(0.7),
                      ),
                    ),
                  ),
                  // CameraPreview(controller!),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: double.infinity,
          //   width: double.infinity,
          //   child: AspectRatio(
          //     aspectRatio: controller!.value.aspectRatio,
          //     child: CameraWidget(
          //       controller: controller,
          //       child: ClipPath(
          //         clipper: CutCircleClipper(),
          //         child: Container(
          //           color: AppColor.black.withOpacity(0.7),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          Positioned(
              top: paddingTop,
              width: media.size.width,
              height: media.size.height / 10,
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: AppColor.transparent,
                    elevation: 0,
                    // brightness: appStyle.brightness,
                    // systemOverlayStyle: $style.isDarkness
                    //     ? SystemUiOverlayStyle.light
                    //     : SystemUiOverlayStyle.dark,
                    // backgroundColor: $color.background,
                    // iconTheme: IconThemeData(color: $color.primary),
                    centerTitle: true,

                    leading: InkWell(
                      child: Icon(
                        FlashMode.off == flashMode
                            ? Icons.flash_off
                            : Icons.flash_on,
                        color: AppColor.white,
                      ),
                      onTap: () {
                        setState(() {
                          flashMode = FlashMode.off == flashMode
                              ? FlashMode.torch
                              : FlashMode.off;
                          setFlashMode(flashMode, controller);
                        });
                      },
                    ),
                  ),
                ],
              )),
          Positioned(
              top: heightRectangleWidthTop(
                  size: media.size, width: media.size.height) +
                  10,
              width: media.size.width,
              height: media.size.height -
                  heightRectangleWidthTop(
                      size: media.size, width: media.size.height) -
                  10,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Ảnh',
                        style: AppStyle.largeRegular,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Huỷ',
                            style: AppStyle.largeRegular,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.white,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.camera_alt,
                                  size: 40, color: AppColor.black),
                              onPressed: () {
                                _takePicture();
                              },
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: _toggleCameraLens,
                            child: const Icon(Icons.autorenew)),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    final CameraController? oldController = controller;
    if (oldController != null) {
      controller = null;
      await oldController.dispose();
    }

    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      imageFormatGroup: ImageFormatGroup.jpeg,
      enableAudio: false,
    );
    controller = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (cameraController.value.hasError) {
        print('Camera error ${cameraController.value.errorDescription}');
      }
    });

    try {
      await cameraController.initialize();
      setFlashMode(FlashMode.off, cameraController);
    } on CameraException catch (e) {
      print(e);
    }

    if (mounted) {
      setState(() {});
    }
  }

  void setFlashMode(
      FlashMode flashMode,
      CameraController? controller,
      ) {
    try {
      controller?.setFlashMode(flashMode);
    } on CameraException catch (e) {
      print(e);
    }
  }

  void _takePicture() async {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      print('Error: select a camera first.');
      return;
    }

    if (cameraController.value.isTakingPicture) {
      return;
    }

    try {
      final XFile file = await cameraController.takePicture();
      var data = await cropImage(file.path);

      if (data != null) {
        await XFile.fromData(data).saveTo(file.path);
        var image = await ImageCropper().cropImage(uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Dịch chuyển và chia tỉ lệ',
              hideBottomControls: true,
              showCropGrid: false,
              initAspectRatio: CropAspectRatioPreset.square),
          IOSUiSettings(
              rotateButtonsHidden: true,
              resetButtonHidden: true,
              aspectRatioPickerButtonHidden: true,
              doneButtonTitle: 'Sử dụng ảnh',
              title: 'Dịch chuyển và chia tỉ lệ',
              cancelButtonTitle: 'Chụp lại')
        ], cropStyle: CropStyle.circle, sourcePath: file.path);
        if (image != null) {
          Navigator.of(context).pop(image.path);
        }
      } else {
        print("cropImage null");
      }
    } on CameraException catch (e) {
      print(e);

      return;
    }
  }

  Future<Uint8List?> cropImage(String rawPath) async {
    try {
      final properties = await FlutterNativeImage.getImageProperties(rawPath);

      final widthImage = controller!.value.previewSize!.height;
      final heightImage = controller!.value.previewSize!.width;
      final ratioY = heightImage / media.size.height;
      final ratioX = widthImage / media.size.width;
      final ratioSize =
          media.size.width / (media.size.height * 3 / 4 - topOffsetRectangle);
      final top = (topOffsetRectangle * ratioY).toInt();
      final height =
      ((media.size.height * 3 / 4 - topOffsetRectangle) * ratioY).toInt();
      final width = (height * ratioSize).toInt();
      final left = (widthImage - width) ~/ 2;

      var _left = left;
      var _top = top;
      var _width = width;
      var _height = height;

      switch (properties.orientation) {
        case ImageOrientation.normal:
          break;
        case ImageOrientation.rotate90:
          _left = top;
          _top = left;
          _width = height;
          _height = width;
          break;
        case ImageOrientation.rotate180:
          _left = left;
          _top = heightImage.toInt() - (top + height);
          _width = width;
          _height = height;
          break;
        case ImageOrientation.rotate270:
          _left = heightImage.toInt() - (height + top);
          _top = left;
          _width = height;
          _height = width;
          break;
        case ImageOrientation.flipHorizontal:
          break;
        case ImageOrientation.flipVertical:
          break;
        case ImageOrientation.transpose:
          break;
        case ImageOrientation.transverse:
          break;
        case ImageOrientation.undefined:
          break;
      }

      final croppedFile = await FlutterNativeImage.cropImage(
        rawPath,
        _left,
        _top,
        _width,
        _height,
      );

      return await croppedFile.readAsBytes();
    } catch (e) {
      print(e);
      return null;
    }
  }

  void _toggleCameraLens() {
    final lensDirection = controller?.description.lensDirection;
    CameraDescription newDescription;
    if (lensDirection == CameraLensDirection.front) {
      newDescription = _cameras.firstWhere((description) =>
      description.lensDirection == CameraLensDirection.back);
    } else {
      newDescription = _cameras.firstWhere((description) =>
      description.lensDirection == CameraLensDirection.front);
    }

    if (newDescription != null) {
      onNewCameraSelected(newDescription);
    } else {
      print('Asked camera not available');
    }
  }
}

class CameraWidget extends StatelessWidget {
  final Widget child;
  final CameraController? controller;
  const CameraWidget({Key? key, required this.child, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CameraController? cameraController = controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      return const SizedBox();
    } else {
      return CameraPreview(
        controller!,
        child: child,
      );
    }
  }
}

class CutCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final paddingVertical = paddingRectangleVertical(size);
    final width = widthRectangle(size, 0);
    return Path.combine(
      PathOperation.difference,
      Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
      Path()
        ..addRRect(RRect.fromRectAndRadius(
            Rect.fromLTWH(paddingVertical, topOffsetRectangle, width,
                size.height * 3 / 4 - topOffsetRectangle),
            const Radius.circular(0)))
        ..close(),
    );
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

double widthRectangle(Size size, [double? paddingVertical]) {
  return size.width - (paddingVertical ?? paddingRectangleVertical(size)) * 2;
}

double paddingRectangleVertical(Size size) {
  return 0;
}

double heightRectangle({Size? size, double? width}) {
  return (width ?? widthRectangle(size ?? Size.zero)) * 3 / 4;
}

double heightRectangleWidthTop({Size? size, double? width}) {
  return ((width ?? widthRectangle(size ?? Size.zero)) * 3 / 4);
}

var topOffsetRectangle = 150.0;

// class CameraAction {
//   final String title;
//   final String? actionName;
//   final String actionDescription;
//   final String? description;
//   const CameraAction({
//     required this.title,
//     this.description,
//     this.actionName,
//     required this.actionDescription,
//   });
// }
