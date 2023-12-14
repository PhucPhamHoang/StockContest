import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:untitled/businessLogic/bloc/contestAccountInfo/contest_account_info_bloc.dart';
import 'package:untitled/businessLogic/bloc/user_info/user_info_bloc.dart';
import 'package:untitled/data/dto/userInfoDto.dart';
import 'package:untitled/data/static/enum/ChangeAccontInfoEnum.dart';
import 'package:untitled/data/static/extension/DatetimeExtension.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppDialog.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';
import 'package:untitled/presentation/components/text_form_field/AppTextFormField.dart';
import 'package:untitled/presentation/screens/user/account_info_screen.dart';

class ChangeUserInfoScreen extends StatefulWidget {
  final ChangeInfoTypeEnum type;
  final UserInfoDto userInfo;

  const ChangeUserInfoScreen(
      {super.key, required this.type, required this.userInfo});

  @override
  State<ChangeUserInfoScreen> createState() => _ChangeUserInfoScreenState();
}

class _ChangeUserInfoScreenState extends State<ChangeUserInfoScreen> {
  int isSelected = -1;
  late bool isMaleSelected = false;
  late bool isFemaleSelected = false;
  late TextEditingController phoneController = TextEditingController();
  late TextEditingController addressController = TextEditingController();
  late DateTime? birthDay;

  @override
  void initState() {
    super.initState();

    isMaleSelected = widget.userInfo.gender == "Nam" ? true : false;
    isFemaleSelected = widget.userInfo.gender == "Nữ" ? true : false;
    phoneController.text = widget.userInfo?.phoneNum ?? "";
    addressController.text = widget.userInfo?.address ?? "";
    birthDay = DateTime.tryParse(widget.userInfo.dateOfBirth ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserInfoBloc, UserInfoState>(
      listener: (context, state) {
        state.maybeMap(
            changeSuccess: (data) {
              AppDialog.showAppCupertinoDialog(
                context: context,
                title: 'Cập nhật thành công',
                content:
                    'Bạn đã cập nhật thông tin ${widget.type.title.toLowerCase()} thành công.',
              ).then((value) {
                print("state");
                context.pop(true);
                context.read<UserInfoBloc>().add(UserInfoEvent.fetch());
              });
            },
            error: (state) {
              AppDialog.showAppCupertinoDialog(
                context: context,
                title: 'Cập nhật thất bại',
                content:
                    'Bạn đã cập nhật thông tin ${widget.type.title.toLowerCase()} không thành công.',
              );
              context.pop(true);
            },
            orElse: () {});
      },
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop(true);
                          context
                              .read<UserInfoBloc>()
                              .add(UserInfoEvent.reset());
                        },
                        child: Text(
                          'Huỷ',
                          style: AppStyle.largeRegular.copyWith(
                            color: AppColor.orange,
                          ),
                        )),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        widget.type.title,
                        style: AppStyle.hugeMedium.copyWith(
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          if (widget.type.name ==
                              ChangeInfoTypeEnum.gender.name) {
                            context.read<UserInfoBloc>().add(
                                UserInfoEvent.change(
                                    data: UserInfoDto(
                                        isMaleSelected ? "MALE" : "FEMALE",
                                        birthDay?.dateTimeNoSpace,
                                        widget.userInfo.phoneNum ?? "",
                                        widget.userInfo.address ?? "",
                                        widget.userInfo.avatar ?? "")));
                          } else if (widget.type.name ==
                              ChangeInfoTypeEnum.phoneNum.name) {
                            context.read<UserInfoBloc>().add(
                                UserInfoEvent.change(
                                    data: UserInfoDto(
                                        widget.userInfo.gender == "Nam" ? "MALE" : "FEMALE",
                                        birthDay?.dateTimeNoSpace,
                                        phoneController.text ?? "",
                                        widget.userInfo.address ?? "",
                                        widget.userInfo.avatar ?? "")));
                          } else if (widget.type.name ==
                              ChangeInfoTypeEnum.dateOfBirth.name) {
                            context.read<UserInfoBloc>().add(
                                UserInfoEvent.change(
                                    data: UserInfoDto(
                                        widget.userInfo.gender == "Nam" ? "MALE" : "FEMALE",
                                        birthDay?.dateTimeNoSpace,
                                        widget.userInfo.phoneNum ?? "",
                                        widget.userInfo.address ?? "",
                                        widget.userInfo.avatar ?? "")));
                          } else if (widget.type.name ==
                              ChangeInfoTypeEnum.address.name) {
                            context.read<UserInfoBloc>().add(
                                UserInfoEvent.change(
                                    data: UserInfoDto(
                                        widget.userInfo.gender == "Nam" ? "MALE" : "FEMALE",
                                        birthDay?.dateTimeNoSpace,
                                        widget.userInfo.phoneNum ?? "",
                                        addressController.text ?? "",
                                        widget.userInfo.avatar ?? "")));
                          }
                        },
                        child: Text(
                          'Cập nhật',
                          style: AppStyle.largeRegular.copyWith(
                            color: AppColor.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Column(
                  children: [
                    widget.type.name == ChangeInfoTypeEnum.gender.name
                        ? CardList(widgets: [
                            // widget.type.name == ChangeInfoTypeEnum.gender.name
                            //     ? CardItem.textField(
                            //         height: 49,
                            //         // controller: emailController,
                            //         title: 'Email',
                            //         isSelected: false,
                            //         hintText: 'nguyenvana@gmail.com',
                            //         textAlign: TextAlign.end,
                            //         backgroundColor: AppColor.transparent,
                            //       )
                            //     : widget.type.name ==
                            //             ChangeInfoTypeEnum.dateOfBirth.name
                            //         ? CardItem.textField(
                            //             height: 49,
                            //             // controller: emailController,
                            //             title: 'Email',
                            //             isSelected: false,
                            //             hintText: 'nguyenvana@gmail.com',
                            //             textAlign: TextAlign.end,
                            //             backgroundColor: AppColor.transparent,
                            //           )
                            //         : widget.type.name ==
                            //                 ChangeInfoTypeEnum.phoneNum.name
                            //             ? CardItem.textField(
                            //                 height: 49,
                            //                 // controller: emailController,
                            //                 title: 'Email',
                            //                 isSelected: false,
                            //                 hintText: 'nguyenvana@gmail.com',
                            //                 textAlign: TextAlign.end,
                            //                 backgroundColor: AppColor.transparent,
                            //               )
                            //             : CardItem.textField(
                            //                 height: 49,
                            //                 // controller: emailController,
                            //                 title: 'Email',
                            //                 isSelected: false,
                            //                 hintText: 'nguyenvana@gmail.com',
                            //                 textAlign: TextAlign.end,
                            //                 backgroundColor: AppColor.transparent,
                            //               )
                            buildGenderFilter("Nam", isMaleSelected, true),
                            buildGenderFilter("Nữ", isFemaleSelected, false),
                          ])
                        : widget.type.name ==
                                ChangeInfoTypeEnum.dateOfBirth.name
                            ? Container(
                                height: 100,
                                child: CupertinoDatePicker(
                                  initialDateTime: birthDay ?? DateTime.now(),
                                  mode: CupertinoDatePickerMode.date,
                                  use24hFormat: true,
                                  // This shows day of week alongside day of month
                                  backgroundColor: Colors.white,
                                  // This is called when the user changes the date.
                                  onDateTimeChanged: (DateTime newDate) {
                                    birthDay = newDate;
                                    print(
                                        "TimeDoi + ${newDate.dateTimeNoSpace}");
                                  },
                                ),
                              )
                            : widget.type.name ==
                                    ChangeInfoTypeEnum.phoneNum.name
                                ? AppTextFormField(
                                    borderRadius: 10,
                                    borderColor: AppColor.transparent,
                                    keyboardType: TextInputType.text,
                                    controller: phoneController,
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Be  Vietnam Pro",
                                        fontSize: 15,
                                        color: AppColor.whiteTextDarkest),
                                    hint: 'Nhập số điện thoại',
                                    // hasBorder: true,
                                    fillColor: Color.fromRGBO(99, 99, 102, 0.2))
                                : widget.type.name ==
                                        ChangeInfoTypeEnum.address.name
                                    ? AppTextFormField(
                                        borderRadius: 10,
                                        minLines: 3,
                                        borderColor: AppColor.transparent,
                                        keyboardType: TextInputType.text,
                                        controller: addressController,
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Be  Vietnam Pro",
                                            fontSize: 15,
                                            color: AppColor.whiteTextDarkest),
                                        hint: 'Nhập địa chỉ',
                                        // hasBorder: true,
                                        fillColor:
                                            Color.fromRGBO(99, 99, 102, 0.2))
                                    : Container()
                  ],
                )),
          ],
        );
      },
    );
  }

  Widget buildGenderFilter(String gender, bool isSelected, bool hasDivider) {
    return InkWell(
      onTap: () {
        // Cập nhật giá trị tương ứng khi mục được chọn
        setState(() {
          if (gender == "Nam") {
            isMaleSelected = true;
            isFemaleSelected = false;
          } else if (gender == "Nữ") {
            isFemaleSelected = true;
            isMaleSelected = false;
          }
        });
      },
      child: CardItem.checkBox(
        height: 48,
        backgroundColor: AppColor.transparent,
        title: gender,
        isSelected: isSelected,
        hasDivider: hasDivider,
      ),
    );
  }
}
