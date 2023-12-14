import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:untitled/businessLogic/bloc/login/login_bloc.dart';
import 'package:untitled/businessLogic/bloc/user_info/user_info_bloc.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppDialog.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/bottomSheet/AppBottomSheet.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';
import 'package:untitled/presentation/screens/change_password_creen.dart';

class FeatureScreen extends StatefulWidget {
  const FeatureScreen({super.key});

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  String? image;
  @override
  Widget build(BuildContext context) {
    return AppLayout(
        appBar: const AppBarCustom(
          autoLeading: true,
          title: 'Chức năng',
        ),
        body:  SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      CardList(widgets: [
                        InkWell(
                          onTap: () async {
                            // await AppBottomSheet.customButtomSheet(
                            //     context: context, child: PasswordChangeScreen());
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ChangePasswordScreen()));
                          },
                          child: CardItem.normal(
                            title: 'Trang thành tích cá nhân',
                            isNavigate: true,
                          ),
                        ),
                        InkWell(
                          onTap: () async {

                          },
                          child: CardItem.normal(
                            title: 'Đổi mật khẩu',
                            isNavigate: true,
                          ),
                        )
                      ]),
                      const SizedBox(
                        height: 30,
                      ),
                      CardList(widgets: [
                        CardItem.normal(
                          title: 'Giao diện',
                          value: 'Hệ thống',
                          isNavigate: true,
                        )
                      ]),
                      const SizedBox(
                        height: 30,
                      ),
                      CardList(widgets: [
                        InkWell(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => const SupportScreen()));
                          },
                          child: CardItem.normal(
                            title: 'Hỗ trợ',
                            isNavigate: true,
                          ),
                        )
                      ]),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: InkWell(
                      onTap: () async {
                        var result = await AppDialog.showAppCupertinoDialog(
                          context: context,
                          title: 'Đăng xuất',
                          isCancel: true,
                        );
                        if (result == true) {
                          context.read<LoginBloc>().add(LoginEvent.logOut());
                          //LoadingService(context).clearAllDataWhenLogOut();
                        }
                      },
                      child: CardList(
                        replaceHeight: 49,
                        widgets: [],
                        replaceColor: AppColor.redDark,
                        replace: 'Đăng xuất',
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
