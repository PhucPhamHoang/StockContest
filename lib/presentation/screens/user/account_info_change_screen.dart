// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:untitled/presentation/components/AppColor.dart';
// import 'package:untitled/presentation/components/AppDialog.dart';
// import 'package:untitled/presentation/components/AppStyle.dart';
// import 'package:untitled/presentation/components/AppSwitchButton.dart';
// import 'package:untitled/presentation/components/AppTabBar.dart';
// import 'package:untitled/presentation/components/card/card_item.dart';
// import 'package:untitled/presentation/components/card/card_list.dart';
//
// class AccountInfoChangeScreen extends StatefulWidget {
//   const AccountInfoChangeScreen({super.key});
//
//   @override
//   State<AccountInfoChangeScreen> createState() =>
//       _AccountInfoChangeScreenState();
// }
//
// class _AccountInfoChangeScreenState extends State<AccountInfoChangeScreen> {
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController lastNameController = TextEditingController();
//   TextEditingController nickNameController = TextEditingController();
//   DateTime? birthDay;
//   int currentTypeOrder = 0;
//   bool hasData = false;
//   dynamic value;
//
//   @override
//   void initState() {
//     super.initState();
//     var userInfo = context.read<UserinfoBloc>().loggedUserinfo;
//     firstNameController.text = userInfo?.firstname ?? '';
//     lastNameController.text = userInfo?.lastname ?? '';
//     nickNameController.text = userInfo?.nickname ?? '';
//     currentTypeOrder = userInfo?.gender?.toLowerCase() == "female" ? 1 : 0;
//     birthDay = userInfo?.birthday;
//     if (birthDay is DateTime) {
//       value = birthDay?.textDate;
//     }
//     hasData = value != null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<UserinfoBloc, UserinfoState>(
//         listener: (context, state) {
//       if (state is UserinfoErrorState) {
//         // AppDialog.showAppCupertinoDialog(
//         //   context: context,
//         //   title: 'Cập nhật không thành công',
//         //   content: state.message,
//         // );
//       }
//       if (state is UserinfoModifyUserInfoWaitingOtpState) {}
//       if (state is UserinfoModifyUserInfoSuccessState) {
//         AppDialog.showAppCupertinoDialog(
//           context: context,
//           title: 'Cập nhật thành công',
//           content: 'Bạn đã cập nhật thông tin cá nhân thành công.',
//         ).then((value) => {Navigator.of(context).pop()});
//       }
//     }, builder: (context, state) {
//       var onPressLeading = null;
//       Widget action = Text(
//         'Lưu',
//         style: AppStyle.largeRegular.copyWith(
//           color: AppColor.orange,
//         ),
//       );
//       if (state is UserinfoLoadingState) {
//         onPressLeading = () {};
//         action = const CupertinoActivityIndicator(
//           color: AppColor.grayDark,
//         );
//       }
//
//       return Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//             child: Row(
//               children: [
//                 SizedBox(
//                   width: 50,
//                   child: InkWell(
//                       onTap: onPressLeading ??
//                           () {
//                             Navigator.of(context).pop();
//                           },
//                       child: Text(
//                         'Huỷ',
//                         style: AppStyle.largeRegular.copyWith(
//                           color: AppColor.orange,
//                         ),
//                       )),
//                 ),
//                 Expanded(
//                   child: Center(
//                     child: Text(
//                       'Sửa thông tin cá nhân',
//                       style: AppStyle.hugeMedium.copyWith(
//                         color: AppColor.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: InkWell(
//                       onTap: () {
//                         AppDialog.showAppCupertinoDialog(
//                             title: 'Xác nhận cập nhật',
//                             content: 'Bạn xác nhận cập nhật thông tin cá nhân?',
//                             isCancel: true,
//                             onPressedDefault: () {
//                               context.read<UserinfoBloc>().add(
//                                     OnRequestModifyUserInfoEvent(
//                                         firstname: firstNameController.text,
//                                         lastname: lastNameController.text,
//                                         phoneNumber: '',
//                                         email: '',
//                                         gender: currentTypeOrder == 0
//                                             ? 'male'
//                                             : 'female',
//                                         nickname: nickNameController.text,
//                                         birthday: birthDay?.textDate),
//                                   );
//                             },
//                             context: context);
//                       },
//                       child: action,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//               child: CardList(
//                 widgets: [
//                   CardItem.textField(
//                     height: 49,
//                     controller: firstNameController,
//                     title: 'Họ và tên đệm',
//                     isSelected: false,
//                     hintText: 'Nguyễn Văn',
//                     textAlign: TextAlign.end,
//                     hasDivider: true,
//                     backgroundColor: AppColor.transparent,
//                   ),
//                   CardItem.textField(
//                     height: 49,
//                     controller: lastNameController,
//                     title: 'Tên',
//                     isSelected: false,
//                     hintText: 'A',
//                     textAlign: TextAlign.end,
//                     hasDivider: true,
//                     backgroundColor: AppColor.transparent,
//                   ),
//                   CardItem.normal(
//                     title: 'Giới tính',
//                     hasDivider: true,
//                     value: AppCupertinoTabBar(
//                         backgroundColor: AppColor.transparent,
//                         foregroundColor: AppColor.orangeDark.withOpacity(0.47),
//                         widgets: [
//                           Container(
//                               height: 26,
//                               width: 57,
//                               child: Center(
//                                   child: Text('Nam',
//                                       style: AppStyle.normalRegular))),
//                           Container(
//                               height: 26,
//                               width: 57,
//                               child: Center(
//                                   child: Text('Nữ',
//                                       style: AppStyle.normalRegular))),
//                         ],
//                         separatorColor: AppColor.gray2Dark.withOpacity(0.2),
//                         valueGetter: () => currentTypeOrder,
//                         useShadow: false,
//                         onTap: (index) {
//                           setState(() {
//                             currentTypeOrder = index;
//                           });
//                         },
//                         useSeparators: true,
//                         innerHorizontalPadding: 5.0,
//                         innerVerticalPadding: 5.0,
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(10.0)),
//                         curve: Curves.linearToEaseOut,
//                         duration: const Duration(milliseconds: 200),
//                         allowExpand: false,
//                         allowScrollable: false,
//                         fittedWhenScrollable: false,
//                         animateWhenScrollable: false,
//                         animateUntilScrolled: false,
//                         outerHorizontalPadding: 0,
//                         outerVerticalPadding: 0),
//                   ),
//                   ExpandableWidget(
//                       isFullTap: hasData,
//                       isExpanded: false,
//                       buildChild: (onTap, setFullTap) {
//                         return CardItem.extend(
//                           hasDivider: true,
//                           height: hasData ? 61 : 49,
//                           title: 'Ngày sinh',
//                           subtitle: value,
//                           value: AppSwitch(
//                             autoChange: false,
//                             initValue: hasData,
//                             onChanged: (val) {
//                               final now = DateTime.now();
//                               if (val) {
//                                 setFullTap.call(true);
//                                 value = now.textDate;
//                               } else {
//                                 setFullTap.call(false);
//                                 value = null;
//                               }
//                               birthDay = value != null ? now : value;
//
//                               onTap.call(val);
//                             },
//                           ),
//                         );
//                       },
//                       buildExpandedChild: (onTap, rebuild) => Container(
//                             height: 100,
//                             child: CupertinoDatePicker(
//                               initialDateTime: birthDay,
//                               mode: CupertinoDatePickerMode.date,
//                               use24hFormat: true,
//                               // This shows day of week alongside day of month
//
//                               // This is called when the user changes the date.
//                               onDateTimeChanged: (DateTime newDate) {
//                                 birthDay = newDate;
//                                 rebuild.call();
//                               },
//                             ),
//                           )),
//                   CardItem.textField(
//                     height: 49,
//                     controller: nickNameController,
//                     title: 'Nickname',
//                     isSelected: false,
//                     hintText: 'Nickname chat',
//                     textAlign: TextAlign.end,
//                     hasDivider: false,
//                     backgroundColor: AppColor.transparent,
//                   ),
//                 ],
//               )),
//         ],
//       );
//     });
//   }
// }
