import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/businessLogic/bloc/user_info/user_info_bloc.dart';
import 'package:untitled/data/dto/userInfoDto.dart';
import 'package:untitled/data/model/UserInfoModel.dart';
import 'package:untitled/data/static/enum/ChangeAccontInfoEnum.dart';
import 'package:untitled/data/static/extension/DatetimeExtension.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppConstant.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/AppTitle.dart';
import 'package:untitled/presentation/components/bottomSheet/AppBottomSheet.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';
import 'package:untitled/presentation/screens/user/account_info_change_screen.dart';
import 'package:untitled/presentation/screens/user/change_user_info_screen.dart';

class AccountInfoScreen extends StatefulWidget {
  const AccountInfoScreen({super.key});

  @override
  State<AccountInfoScreen> createState() => _AccountInfoScreenState();
}

class _AccountInfoScreenState extends State<AccountInfoScreen> {

  @override
  void initState() {
    super.initState();
    context.read<UserInfoBloc>().add(const UserInfoEvent.fetch());
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //
    // });
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        appBar: AppBarCustom(
          autoLeading: true,
          title: 'Thông tin của tôi',
        ),
        body: BlocBuilder<UserInfoBloc, UserInfoState>(
          builder: (context, state) {
            UserInfoModel? userData;
            state.maybeMap(
                success: (data){
                  userData = data.userData;
                },
                orElse: (){
            });
            return SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: AppConstant.marginContent,
                    ),
                    AppTitle(
                        leading: 'THÔNG TIN CÁ NHÂN',
                        //trailing: 'Sửa',
                        onTap: () {
                          // AppBottomSheet.customButtomSheet(
                          //     context: context,
                          //     child: const AccountInfoChangeScreen());
                        }),
                    const SizedBox(
                      height: 6,
                    ),
                    CardList(widgets: [
                      CardItem.normal(
                        title: 'Họ và tên ',
                        value: userData?.firstname??"Chưa cập nhật",
                        hasDivider: true,
                      ),
                      CardItem.normal(
                        title: 'Giới tính',
                        value: userData?.gender?.toLowerCase() == 'male'
                            ? 'Nam'
                            : userData?.gender?.toLowerCase() == 'female'
                            ? 'Nữ'
                            : '',
                        hasDivider: true,
                        isNavigate: true,
                        onTap: (){
                          AppBottomSheet.customButtomSheet(
                              context: context, child: ChangeUserInfoScreen(
                            type: ChangeInfoTypeEnum.gender,userInfo: UserInfoDto(userData?.gender?.toLowerCase() == 'male'
                              ? 'Nam':'Nữ',userData?.dateOfBirth?.textDate,userData?.phonenumber,userData?.address,userData?.avatar))).then((value){
                                if (value){
                                  setState(() {
                                  });
                                }
                          });
                        },
                      ),
                      CardItem.normal(
                        title: 'Ngày sinh',
                        value: userData?.dateOfBirth?.dateTimeNoSpace??"Chưa cập nhật",
                        hasDivider: true,
                        isNavigate: true,
                        onTap: (){
                          AppBottomSheet.customButtomSheet(
                              context: context, child: ChangeUserInfoScreen(
                            type: ChangeInfoTypeEnum.dateOfBirth,userInfo: UserInfoDto(userData?.gender?.toLowerCase() == 'male'
                              ? 'Nam':'Nữ',userData?.dateOfBirth?.textDate,userData?.phonenumber,userData?.address,userData?.avatar)));
                        },
                      ),
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    const AppTitle(
                      leading: 'THÔNG TIN LIÊN HỆ',
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    CardList(widgets: [
                      CardItem.normal(
                        title: 'Email',
                        value: userData?.email??"Chưa cập nhật",
                        hasDivider: true,
                        // isNavigate: true,
                        onTap: () {
                          // AppBottomSheet.customButtomSheet(
                          //     context: context, child: EmailChangeScreen());
                        },
                      ),
                      CardItem.normal(
                        title: 'Số điện thoại',
                        value: userData?.phonenumber??"Chưa cập nhật",
                        isNavigate: true,
                        onTap: () {
                          AppBottomSheet.customButtomSheet(
                              context: context, child: ChangeUserInfoScreen(
                            type: ChangeInfoTypeEnum.phoneNum,userInfo: UserInfoDto(userData?.gender?.toLowerCase() == 'male'
                              ? 'Nam':'Nữ',userData?.dateOfBirth?.textDate,userData?.phonenumber,userData?.address,userData?.avatar)));
                        },
                      ),
                      CardItem.normal(
                        title: 'Địa chỉ',
                        value: userData?.address??"Chưa cập nhật",
                        hasDivider: true,
                        isNavigate: true,
                        onTap: () {
                          AppBottomSheet.customButtomSheet(
                              context: context, child: ChangeUserInfoScreen(
                            type: ChangeInfoTypeEnum.address,userInfo: UserInfoDto(userData?.gender?.toLowerCase() == 'male'
                              ? 'Nam':'Nữ',userData?.dateOfBirth?.textDate,userData?.phonenumber,userData?.address,userData?.avatar)));
                        },
                      ),
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    const AppTitle(
                      leading: 'THÔNG TIN TÀI KHOẢN',
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                     CardList(widgets: [
                      CardItem.normal(
                        title: 'ID',
                        value: userData?.userid??"Chưa cập nhật",
                      ),
                      CardItem.normal(
                        title: 'Mã định danh',
                        value: userData?.identifierCode??"Chưa cập nhật",
                      ),
                      CardItem.normal(
                        title: 'Tên đăng nhập',
                        value: userData?.email??"Chưa cập nhật",
                      ),
                      CardItem.normal(
                        title: 'Thời gian hiệu lực',
                        value: userData?.expiredTimePoint.textDate??"Chưa cập nhật",
                      ),
                      CardItem.normal(
                        title: 'Trạng thái hoạt động',
                        value: DateTime.now().isBefore(userData?.expiredTimePoint??DateTime.now())?"Đang hoạt động":"Hết hạn sử dụng",
                      ),
                      CardItem.normal(
                        title: 'Tổ chức trực thuộc',
                        value: userData?.nodesBelong?.replaceAll("[", "").replaceAll("]", "")??"Chưa cập nhật",
                      ),
                    ]),
                    const SizedBox(
                      height: AppConstant.marginContent,
                    )
                  ],
                )

            );
          },
        ));
  }
  void rebuildTab() {
    setState(() {
      // Thực hiện tái xây dựng UI của tab
    });
  }
}
