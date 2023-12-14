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

class ForgotPasswordScreen extends StatefulWidget {
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _identifyId = TextEditingController();
  final TextEditingController _email = TextEditingController();

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
                controller: _identifyId,
                isSelected: false,
                hintText: 'Nhập mã định danh',
                textAlign: TextAlign.end,
                hasDivider: true,
                backgroundColor: AppColor.transparent,
                obscure: true,
              ),
              CardItem.textField(
                height: 49,
                controller: _email,
                isSelected: false,
                hintText: "Nhập email",
                textAlign: TextAlign.end,
                hasDivider: true,
                backgroundColor: AppColor.transparent,
                obscure: true,
              ),
            ]),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Text(
               "Chúng tôi sẽ gửi thông tin về email của bạn sau khi nhận được yêu cầu lấy lại mật khẩu.",
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
                      'Gửi yêu cầu',
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
