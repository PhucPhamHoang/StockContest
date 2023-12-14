// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:stalkmobile/businessLogic/training/bank_info_request/bank_info_request_bloc.dart';
// import 'package:stalkmobile/businessLogic/training/otp_verify/otp_verify_bloc.dart';
// import 'package:stalkmobile/businessLogic/training/request_bank/request_bank_bloc.dart';
// import 'package:stalkmobile/businessLogic/training/rollback_card/rollback_card_bloc.dart';
// import 'package:stalkmobile/data/models_v2/bank/bank_request_model.dart';
// import 'package:stalkmobile/data/repository_v2/app/app_repository.dart';
// import 'package:stalkmobile/data/repository_v2/contest/account_repository.dart';
// import 'package:stalkmobile/data/repository_v2/contest/bank_repository.dart';
// import 'package:stalkmobile/data/static/enum/request_status_enum.dart';
// import 'package:stalkmobile/presentation/components_v2/AppDialog.dart';
// import 'package:stalkmobile/presentation/components_v2/app_drop_down_button.dart';
// import 'package:stalkmobile/presentation/components_v2/app_title.dart';
// import 'package:stalkmobile/presentation/components_v2/card/card_item.dart';
// import 'package:stalkmobile/presentation/components_v2/card/card_list.dart';
// import 'package:stalkmobile/presentation/components_v2/text_timer.dart';
// import 'package:stalkmobile/presentation/components_v2/textformfield/app_text_form_field.dart';
// import 'package:stalkmobile/presentation/components_v2/textformfield/formatters/padding_formatter.dart';
// import 'package:stalkmobile/utils/theme/AppColor.dart';
// import 'package:stalkmobile/utils/theme/AppStyle.dart';
// import 'package:untitled/presentation/components/AppColor.dart';
// import 'package:untitled/presentation/components/AppDialog.dart';
// import 'package:untitled/presentation/components/AppStyle.dart';
// import 'package:untitled/presentation/components/AppTextTimer.dart';
// import 'package:untitled/presentation/components/text_form_field/formatter/PaddingFormatter.dart';
//
// class OTPBottomSheet extends StatefulWidget {
//   final String requestId;
//   final String? description;
//   final void Function(OTPVerifyBloc?)? onSend;
//   final void Function(OTPVerifyBloc?, String otp)? onConfirm;
//   final bool? notResend;
//   final String? trailing;
//   final void Function(BuildContext)? onTrailing;
//   final Future<bool> Function(dynamic, BuildContext)? onSuccess;
//   final Future<bool> Function(String error)? onError;
//   final bool? isCount;
//   final int count;
//   const OTPBottomSheet({
//     super.key,
//     this.onSuccess,
//     this.onError,
//     required this.requestId,
//     this.description,
//     this.trailing,
//     this.onSend,
//     this.onConfirm,
//     this.notResend,
//     this.onTrailing,
//     this.isCount,
//     int? count,
//   }) : count = count ?? 0;
//
//   @override
//   State<OTPBottomSheet> createState() => _OTPBottomSheetState();
// }
//
// class _OTPBottomSheetState extends State<OTPBottomSheet>
//     with WidgetsBindingObserver {
//   List<TextEditingController> controllers = [];
//   List<FocusNode> focusNodes = [];
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   bool isResend = false;
//   DateTime? time;
//   int? count;
//   OTPVerifyBloc? otpVerifyBloc;
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//     time = DateTime.now();
//     for (var i = 0; i < 6; i++) {
//       controllers.add(TextEditingController());
//       focusNodes.add(FocusNode());
//     }
//   }
//
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     super.didChangeAppLifecycleState(state);
//     if (state == AppLifecycleState.resumed && !Platform.isIOS) {
//       if (mounted) {
//         FocusScope.of(context).unfocus();
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) {
//         var bloc = OTPVerifyBloc(
//             context.read<AppRepository>(), context.read<AccountRepository>());
//         otpVerifyBloc = bloc;
//         if (widget.onSend != null) {
//           widget.onSend?.call(otpVerifyBloc);
//         } else {
//           otpVerifyBloc?.add(OTPVerifyEvent.send(requestId: widget.requestId));
//         }
//
//         return bloc;
//       },
//       child: BlocConsumer<OTPVerifyBloc, OTPVerifyState>(
//           listener: (context, state) {
//             state.maybeMap(
//                 confirmSuccess: (state) async {
//                   widget.onSuccess?.call(state, context) ?? handleSuccess();
//                 },
//                 sendOTPSuccess: (state) {
//                   time = time?.add(Duration(seconds: state.time));
//                   isResend = false;
//                 },
//                 sendError: (state) async {
//                   if (state.errorMessage ==
//                       'OTP đã được gửi về SMS, vui lòng kiểm tra và nhập vào ô Mã xác nhận!') {
//                     var result = await AppDialog.showAppCupertinoDialog(
//                       context: context,
//                       title: 'Không thể gửi yêu cầu',
//                       content:
//                       'Vui lòng chờ trong giây lát trước khi gửi lại yêu cầu mới.',
//                     );
//                     if (result == true) {
//                       Navigator.of(context).pop();
//                     }
//                   }
//                   isResend = true;
//                 },
//                 error: (state) {
//                   var listContent = state.content?.split(',');
//                   if (listContent?.isNotEmpty == true &&
//                       listContent?.length == 2 &&
//                       listContent![1].contains('ERROR_WRONG_OTP_AUTHENTICATION') &&
//                       widget.isCount == true) {
//                     count = int.tryParse(listContent[0].trim());
//                   }
//
//                   widget.onError?.call(state.errorMessage) ??
//                       handleError(state.errorMessage);
//                 },
//                 orElse: () {});
//           }, builder: (context, state) {
//         // state.maybeMap(
//         //     sendOTPSuccess: (state) {
//         //       time = time?.add(Duration(seconds: state.time));
//         //       isResend = false;
//         //     },
//         // orElse: () {});
//         return Padding(
//           padding:
//           EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//           child: Column(
//             children: [
//               Padding(
//                 padding:
//                 const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.of(context).pop();
//                           },
//                           child: Text(
//                             'Huỷ',
//                             style: AppStyle.largeRegular.copyWith(
//                               color: AppColor.orange,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Center(
//                       child: Text(
//                         'Nhập mã xác thực',
//                         style: AppStyle.hugeMedium.copyWith(
//                           color: AppColor.white,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Align(
//                         alignment: Alignment.centerRight,
//                         child: InkWell(
//                           onTap: () {
//                             widget.onTrailing?.call(context);
//                           },
//                           child: Text(
//                             widget.trailing ?? '',
//                             style: AppStyle.largeRegular.copyWith(
//                               color: AppColor.orange,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Expanded(
//                 child: Center(
//                   child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text(
//                             widget.description ??
//                                 'Nhập mã xác thực được gửi về số điện thoại đã đăng ký',
//                             style: AppStyle.largeRegular,
//                             textAlign: TextAlign.center,
//                           ),
//                           const SizedBox(
//                             height: 30,
//                           ),
//                           FocusScope(
//                             child: Form(
//                               key: _formKey,
//                               child: InkWell(
//                                 onTap: () {
//                                   if (MediaQuery.of(context)
//                                       .viewInsets
//                                       .bottom ==
//                                       0 &&
//                                       !Platform.isIOS) {
//                                     var i = 0;
//
//                                     for (i; i < controllers.length; i++) {
//                                       if (controllers[i].text == ' -') {
//                                         break;
//                                       }
//                                     }
//                                     if (i == controllers.length) {
//                                       i = i - 1;
//                                     }
//                                     focusNodes[i].requestFocus();
//                                   }
//                                 },
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: List.generate(
//                                     controllers.length,
//                                         (index) => IgnorePointer(
//                                       child: OtpInput(
//                                           focusNode: focusNodes[index],
//                                           controllers: controllers,
//                                           controller: controllers[index],
//                                           autoFocus: index == 0,
//                                           forcePreviousFocus: index == 0,
//                                           onFinish: index ==
//                                               (controllers.length - 1)
//                                               ? (value) {
//                                             if (value.isNotEmpty &&
//                                                 value != ' -') {
//                                               var text = controllers.fold(
//                                                   '',
//                                                       (previousValue,
//                                                       element) =>
//                                                   previousValue
//                                                       .toString() +
//                                                       element.text);
//                                               text = text.replaceAll(
//                                                   ' ', '');
//                                               if (widget.onConfirm !=
//                                                   null) {
//                                                 widget.onConfirm?.call(
//                                                     otpVerifyBloc, text);
//                                               } else {
//                                                 // otpVerifyBloc?.add(
//                                                 //     OTPVerifyEvent.confirm(
//                                                 //         requestId: widget
//                                                 //             .requestId,
//                                                 //         otp: text));
//                                               }
//                                             }
//                                           }
//                                               : null,
//                                           forceNextFocus: index ==
//                                               (controllers.length - 1)),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           if (widget.isCount == true && count != null)
//                             Padding(
//                               padding: const EdgeInsets.only(top: 30),
//                               child: Text(
//                                 'Bạn còn $count lần thử',
//                                 style: AppStyle.largeRegular
//                                     .copyWith(color: AppColor.redDark),
//                               ),
//                             ),
//                           if (widget.notResend == true) ...[
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 if (isResend) {
//                                   if (widget.onSend != null) {
//                                     widget.onSend?.call(otpVerifyBloc);
//                                   } else {
//                                     // context.read<OTPVerifyBloc>().add(
//                                     //     OTPVerifyEvent.send(
//                                     //         requestId: widget.requestId));
//                                   }
//                                   isResend = false;
//                                   time = DateTime.now();
//                                 }
//                               },
//                               child: Text('Gửi lại mã xác thực',
//                                   style: AppStyle.largeRegular.copyWith(
//                                       color: isResend
//                                           ? AppColor.orangeDark
//                                           : AppColor.grayDark)),
//                             ),
//                             TextTimer(
//                               time: time ?? DateTime.now(),
//                               onFinished: () {
//                                 setState(() {
//                                   isResend = true;
//                                 });
//                               },
//                               onlyMS: true,
//                               styleTime: AppStyle.medianRegular
//                                   .copyWith(color: AppColor.white),
//                             )
//                           ]
//                         ],
//                       )),
//                 ),
//               ),
//             ],
//           ),
//         );
//       }),
//     );
//   }
//
//   void handleError(
//       String errorCode,
//       ) {
//     AppDialog.showAppCupertinoDialog(
//       content: errorCode,
//       context: context,
//     );
//   }
//
//   void handleSuccess() async {
//     var result = await AppDialog.showAppCupertinoDialog(
//         context: context,
//         isCancel: true,
//         title: 'Giao dịch thành công',
//         content: 'Giao dịch được thực hiện thành công',
//         cancelActionText: 'Hỗ trợ',
//         onPressedDefault: () {});
//
//     if (result == true) {
//       Navigator.of(context).pop();
//     }
//   }
// }
//
// // bool isNext = false;
// // bool isPrevious = true;
// // String currentOTPText = '';
// TextEditingController? previousController;
//
// class OtpInput extends StatefulWidget {
//   final TextEditingController controller;
//   final List<TextEditingController> controllers;
//   final bool autoFocus;
//   final FocusNode focusNode;
//   final bool? forceNextFocus;
//   final bool? forcePreviousFocus;
//   final void Function(String)? onFinish;
//   const OtpInput(
//       {Key? key,
//         required this.controller,
//         required this.controllers,
//         required this.autoFocus,
//         this.forceNextFocus,
//         this.forcePreviousFocus,
//         this.onFinish,
//         required this.focusNode})
//       : super(key: key);
//
//   @override
//   State<OtpInput> createState() => _OtpInputState();
// }
//
// bool isAction = true;
//
// class _OtpInputState extends State<OtpInput> {
//   String previous = '';
//   @override
//   void initState() {
//     super.initState();
//     widget.controller.text = " -";
//
//     // widget.controller.addListener(() {
//     //   if (widget.controller.text != ' -' &&
//     //       (previous.length != 2 || previous == ' -')) {
//     //     if (widget.forceNextFocus != true) {
//     //       previousController == widget.controller;
//     //       isAction = false;
//     //       FocusScope.of(context).nextFocus();
//     //     }
//     //     previous = widget.controller.text;
//     //     return;
//     //   }
//
//     //   if ((widget.controller.text == ' -' &&
//     //       (previous == ' -' || (previous == '')))) {
//     //     if (previousController == widget.controller) {
//     //       previousController = null;
//     //       return;
//     //     }
//     //     if (!isAction) {
//     //       isAction = true;
//     //       return;
//     //     }
//     //     if (widget.forcePreviousFocus != true) {
//     //       for (var i = 0; i < widget.controllers.length; i++) {
//     //         if (widget.controller == widget.controllers[i]) {
//     //           if (i >= 1) {
//     //             previousController = widget.controllers[i - 1];
//
//     //             widget.controllers[i - 1].text = ' -';
//     //           }
//     //         }
//     //       }
//     //       FocusScope.of(context).previousFocus();
//     //     }
//     //     previous = '';
//     //     return;
//     //   }
//
//     //   if (widget.controller.text == ' -' &&
//     //       previous != ' -' &&
//     //       previous.length == 2) {
//     //     if ((widget.forcePreviousFocus == true)) {
//     //       previous = '';
//     //     } else {
//     //       previous = widget.controller.text;
//     //     }
//     //   }
//     // });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       width: 50,
//       child: TextFormField(
//         focusNode: widget.focusNode,
//         autofocus: widget.autoFocus,
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         style: AppStyle.hugeMedium.copyWith(fontSize: 27),
//         controller: widget.controller,
//
//         maxLength: 3,
//         onTap: null,
//         // cursorColor: Theme.of(context).primaryColor,
//         cursorHeight: 0,
//         cursorWidth: 0,
//         // showCursor: false,
//         // cursorColor: AppColor.transparent,
//         inputFormatters: [
//           PaddingFormatter(
//             controllers: widget.controllers,
//             context: context,
//             forceNextFocus: widget.forceNextFocus,
//             forcePreviousFocus: widget.forcePreviousFocus,
//             controller: widget.controller,
//           )
//         ],
//         decoration: InputDecoration(
//             focusColor: AppColor.transparent,
//             hintText: ' -',
//             border: InputBorder.none,
//             counterText: '',
//             hintStyle: AppStyle.hugeMedium.copyWith(fontSize: 27)),
//         onChanged: (value) {
//           if (widget.onFinish != null) {
//             widget.onFinish?.call(value);
//           }
//         },
//       ),
//     );
//   }
// }
