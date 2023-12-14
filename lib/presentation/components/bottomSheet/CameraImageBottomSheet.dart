import 'dart:io';
import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppDialog.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

List<CameraDescription> _cameras = <CameraDescription>[];

class CameraImageBottomSheet extends StatefulWidget {
  final List<CameraAction> listAction;
  const CameraImageBottomSheet({
    Key? key,
    required this.listAction,
  }) : super(key: key);
  @override
  State createState() => CameraImageBottomSheetState();
}

class CameraImageBottomSheetState extends State<CameraImageBottomSheet>
    with WidgetsBindingObserver {
  CameraController? controller;
  var flashMode = FlashMode.off;
  double? cameraSize;
  bool isProcessing = false;
  late MediaQueryData media;
  double heightCamera = 0;
  Size? sizeCamera;
  List<String> listImage = [];
  int indexAction = 0;
  double paddingTop = 50;
  @override
  void initState() {
    topOffsetRectangle = 130;
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (_cameras.isEmpty) _cameras = await availableCameras();
      await onNewCameraSelected(_cameras[0]);
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
      // cameraController.dispose();
      // controller = null;
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
    topOffsetRectangle = media.size.height / 4 + paddingTop;
    if (controller == null || controller?.value.isInitialized != true) {
      return Container();
    }
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
                height: media.size.height,
                child: AspectRatio(
                  aspectRatio: 1 / controller!.value.aspectRatio,
                  child: CameraWidget(
                    controller: controller,
                    child: ClipPath(
                      clipper: CutCircleClipper(media.size, (size) {
                        sizeCamera = size;
                      }),
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
          //   width: double.infinity,
          //   height: double.infinity,
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
              height: media.size.height / 4,
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
                    actions: [
                      InkWell(
                        child: InkWell(
                          child: Icon(
                            FlashMode.off == flashMode
                                ? Icons.flash_off
                                : Icons.flash_on,
                            color: AppColor.orangeDark,
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
                      )
                      // AppImageButton(
                      //   FlashMode.off == flashMode
                      //       ? AppAsset.flashActive
                      //       : AppAsset.flashInactive,
                      //   imageSize: const Size(24, 24),
                      //   color: $color.primary,
                      //   onTap: () async {
                      //     setState(() {
                      //       flashMode = FlashMode.off == flashMode
                      //           ? FlashMode.torch
                      //           : FlashMode.off;
                      //       setFlashMode(flashMode);
                      //     });
                      //   },
                      // )
                    ],
                    leadingWidth: 100,
                    leading: Navigator.of(context).canPop()
                        ? InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.navigate_before),
                          Text(
                            'Quay lại',
                            style: AppStyle.largeRegular.copyWith(
                              color: AppColor.orange,
                            ),
                          ),
                        ],
                      ),
                    )
                        : null,
                  ),
                  Spacer(),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      widget.listAction[indexAction].title,
                      style: AppStyle.largeBold.copyWith(
                          color: AppColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      widget.listAction[indexAction].actionDescription,
                      style: AppStyle.medianRegular.copyWith(
                        color: AppColor.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )),
          Positioned(
              top: heightRectangleWidthTop(size: media.size) + 25,
              width: media.size.width,
              height: media.size.height -
                  heightRectangleWidthTop(size: media.size) -
                  25,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 20.0 + media.padding.bottom,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () async {
                              // bool isGranted =
                              //     await Permission.photos.isGranted;
                              // if (!isGranted) {
                              //   await openAppSettings();
                              //   isGranted = await Permission.photos.isGranted;
                              //   if (!isGranted) {
                              //     return;
                              //   }
                              // }

                              ImagePicker()
                                  .pickImage(source: ImageSource.gallery)
                                  .then((XFile? imageGallery) async {
                                if (imageGallery != null) {
                                  var imageCrop = await ImageCropper()
                                      .cropImage(
                                      aspectRatio: const CropAspectRatio(
                                          ratioX: 4, ratioY: 3),
                                      uiSettings: [
                                        AndroidUiSettings(
                                          toolbarTitle:
                                          'Dịch chuyển và chia tỉ lệ',
                                          hideBottomControls: true,
                                          showCropGrid: false,
                                          lockAspectRatio: true,
                                        ),
                                        IOSUiSettings(
                                            rotateButtonsHidden: true,
                                            resetButtonHidden: true,
                                            aspectRatioLockEnabled: true,
                                            aspectRatioLockDimensionSwapEnabled:
                                            true,
                                            aspectRatioPickerButtonHidden:
                                            true,
                                            doneButtonTitle: 'Chọn',
                                            title:
                                            'Dịch chuyển và chia tỉ lệ',
                                            cancelButtonTitle: 'Huỷ')
                                      ],
                                      cropStyle: CropStyle.rectangle,
                                      sourcePath: imageGallery.path);
                                  if (imageCrop != null) {
                                    listImage.add(imageCrop.path);

                                    if (indexAction ==
                                        widget.listAction.length - 1) {
                                      Navigator.of(context).pop(listImage);
                                    } else {
                                      await AppDialog.showAppCupertinoDialog(
                                          title: 'Tiếp tục chụp mặt sau',
                                          content:
                                          'Vui lòng lật giấy tờ và chụp mặt sau để hoàn thành việc xác thực.',
                                          defaultActionText: 'Tiếp tục',
                                          context: context);
                                      setState(() {
                                        indexAction++;
                                      });
                                    }
                                  }
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
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
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: _toggleCameraLens,
                            child: Container(
                              height: 50,
                              width: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.grayDark.withOpacity(0.2),
                              ),
                              child: const Icon(Icons.autorenew,
                                  color: AppColor.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
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
      FlashMode flashMod,
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
        listImage.add(data.path);

        if (indexAction == widget.listAction.length - 1) {
          Navigator.of(context).pop(listImage);
        } else {
          await AppDialog.showAppCupertinoDialog(
              title: 'Tiếp tục chụp mặt sau',
              content:
              'Vui lòng lật giấy tờ và chụp mặt sau để hoàn thành việc xác thực.',
              defaultActionText: 'Tiếp tục',
              context: context);
          setState(() {
            indexAction++;
          });
        }
      } else {
        print("cropImage null");
      }
    } on CameraException catch (e) {
      print(e);

      return;
    }
  }

  Future<File?> cropImage(String rawPath) async {
    try {
      final properties = await FlutterNativeImage.getImageProperties(rawPath);

      final widthImage = controller!.value.previewSize!.height;
      final heightImage = controller!.value.previewSize!.width;

      final ratioX = widthImage / (sizeCamera?.width ?? media.size.width);
      final ratioY = heightImage / (sizeCamera?.height ?? media.size.height);
      final padding = paddingRectangleVertical(media.size);
      final overFlowPadding =
          ((sizeCamera?.width ?? media.size.width) - media.size.width) / 2;

      final left = ((padding + overFlowPadding) * ratioX).toInt();
      final top = (topOffsetRectangle * ratioY).toInt();
      final width = (widthRectangle(media.size) * ratioX).toInt();
      final height =
      (heightRectangle(width: widthRectangle(media.size)) * ratioY).toInt();

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

      return croppedFile;
    } catch (e) {
      print(e);
      return null;
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
        cameraController,
        child: child,
      );
    }
  }
}

class CutCircleClipper extends CustomClipper<Path> {
  final Size size;
  final void Function(Size) callBackSize;

  CutCircleClipper(this.size, this.callBackSize);
  @override
  Path getClip(Size sizeNew) {
    callBackSize.call(sizeNew);
    final paddingVertical = paddingRectangleVertical(size);
    final width = widthRectangle(size, paddingVertical);
    return Path.combine(
      PathOperation.difference,
      Path()..addRect(Rect.fromLTWH(0, 0, sizeNew.width, sizeNew.height)),
      Path()
        ..addRRect(RRect.fromRectAndRadius(
            Rect.fromLTWH(paddingVertical + (sizeNew.width - size.width) / 2,
                topOffsetRectangle, width, heightRectangle(width: width)),
            const Radius.circular(10)))
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
  return 15;
}

double heightRectangle({Size? size, double? width}) {
  return (width ?? widthRectangle(size ?? Size.zero)) * 3 / 4;
}

double heightRectangleWidthTop({Size? size, double? width}) {
  return ((width ?? widthRectangle(size ?? Size.zero)) * 3 / 4) +
      topOffsetRectangle;
}

var topOffsetRectangle = 150.0;

class CameraAction {
  final String title;
  final String? actionName;
  final String actionDescription;
  final String? description;
  const CameraAction({
    required this.title,
    this.description,
    this.actionName,
    required this.actionDescription,
  });
}
