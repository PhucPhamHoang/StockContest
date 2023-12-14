import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppAsset.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppImage.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  State<ChangePasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController _currentPassword = TextEditingController();
  TextEditingController _newPassword = TextEditingController();
  TextEditingController _newPasswordAgain = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appBar: AppBarCustom(
        title: "Đổi mật khẩu",
        autoLeading: true,
        action: SizedBox(
          height: 22,
          width: 21,
          child: AppImage(
            path: AppAsset.setting,
            color: AppColor.orange,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 22,
            ),
            CardList(widgets: [
              CardItem.textField(
                height: 49,
                controller: _currentPassword,
                title: 'Mật khẩu hiện tại',
                isSelected: false,
                hintText: 'Nhập mật khẩu hiện tại',
                textAlign: TextAlign.end,
                hasDivider: true,
                backgroundColor: AppColor.transparent,
                obscure: true,
              ),
              CardItem.textField(
                height: 49,
                controller: _currentPassword,
                title: 'Mật khẩu mới',
                isSelected: false,
                hintText: "Mật khẩu mới",
                textAlign: TextAlign.end,
                hasDivider: true,
                backgroundColor: AppColor.transparent,
                obscure: true,
              ),
              CardItem.textField(
                height: 49,
                controller: _currentPassword,
                title: 'Nhập lại mật khẩu mới',
                isSelected: false,
                hintText: 'Nhập lại mật khẩu mới',
                textAlign: TextAlign.end,
                hasDivider: true,
                obscure: true,
                backgroundColor: AppColor.transparent,
              ),
            ]),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Text(
                "Yêu cầu mật khẩu: độ dài từ 6-32 ký tự",
                style: AppStyle.smallRegular,
              ),
            ),
            SizedBox(
              height: 49,
            ),
            Center(
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(58, 58, 60, 1),
                  // border: Border.all(
                  //   color: Color(0xffec702e),
                  //   width: 1.0,
                  // ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 49,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                    ),
                    onPressed: () {
                      ();
                    },
                    child: Text(
                      'Đổi mật khẩu',
                      style: AppStyle.largeMedium
                          .copyWith(color: Color.fromRGBO(10, 132, 255, 1)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
