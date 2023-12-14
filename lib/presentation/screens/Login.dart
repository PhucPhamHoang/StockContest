import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/businessLogic/bloc/contestAccountInfo/contest_account_info_bloc.dart';
import 'package:untitled/businessLogic/bloc/login/login_bloc.dart';
import 'package:untitled/businessLogic/bloc/stockInfo/stock_info_bloc.dart';
import 'package:untitled/businessLogic/bloc/user_info/user_info_bloc.dart';
import 'package:untitled/data/model/LoginModel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/data/static/ApplicationSetting.dart';
import 'package:untitled/data/static/enum/SharedPreferencesEnum.dart';
import 'package:untitled/presentation/components/AppAsset.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppImage.dart';
import 'package:untitled/presentation/components/AppSwitchButton.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';
import 'package:untitled/presentation/components/text_form_field/AppOtpTextField.dart';
import 'package:untitled/presentation/components/text_form_field/AppTextFormField.dart';
import 'package:untitled/presentation/screens/change_password_creen.dart';
import 'package:untitled/presentation/screens/forgot_password_screen.dart';
import 'package:untitled/utils/render/ElemRender.dart';
import 'package:untitled/utils/render/UIrender.dart';
import 'package:untitled/utils/service/DebugService.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNum = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  late SharedPreferences loginPreference;
  late bool isSavePassword;

  void _handleLogin() {
    if (_phoneNum.text.isNotEmpty && _pass.text.isNotEmpty) {
      BlocProvider.of<LoginBloc>(context).add(
        LoginEvent.fetch(
          _phoneNum.value.text.trim(),
          _pass.value.text,
            isSavePassword
        ),
      );
    } else {
      ElemRender.showSnackBarNotification(
        context,
        'Vui lòng nhập đầy đủ tên đăng nhập và mật khẩu!',
      );
    }
  }
  @override
  void initState() {
    setState(() {
      isSavePassword = ApplicationSetting.instance.sharedPreferences
          .getBool(SharedPreferencesEnum.IS_SAVE_PASSWORD.name) ??
          false;

      String username = ApplicationSetting.instance.sharedPreferences
          .getString(SharedPreferencesEnum.LAST_LOGIN_USERNAME.name) ??
          '';

      _phoneNum.text = username;

      if (isSavePassword) {
        String password = ApplicationSetting.instance.sharedPreferences
            .getString(SharedPreferencesEnum.LAST_LOGIN_PASSWORD.name) ??
            '';

        if (password.isNotEmpty) {
          _pass.text = password;

        } else {
        }
      } else {
      }
    });

    super.initState();
  }
  final FocusNode _focusNode = FocusNode();

// The message to display.
  String? _message;

//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//      body: SingleChildScrollView(
//        child: Padding (
//          padding: EdgeInsets.only(top: 40),
//          child: OtpTextField(
//            numberOfFields: 5,
//            borderColor: Color(0xFF512DA8),
//            //set to true to show as box or false to show as dash
//            //runs when a code is typed in
//            onCodeChanged: (String code) {
//              //handle validation or checks here
//            },
//            //runs when every textfield is filled
//            onSubmit: (String verificationCode){
//              showDialog(
//                  context: context,
//                  builder: (context){
//                    return AlertDialog(
//                      title: Text("Verification Code"),
//                      content: Text('Code entered is $verificationCode'),
//                    );
//                  }
//              );
//            },
//          ),
//        ),
//      ),
//   );
//   }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              StockInfoBloc(context.read<StockOrderRepository>()),
        ),
      ],
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
                color: AppColor.black,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.bottomCenter,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40,right: 25),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {

                        },
                        child: AppImage(
                          height: 25,
                          path: AppAsset.setting,
                          color: AppColor.orange,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                        width: 150,
                        height: 30,
                        margin: const EdgeInsets.only(top: 56),
                        child: AppImage(
                          path: AppAsset.logo,
                        )),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 61, 20, 0),
                      child: Column(children: [
                        Column(
                          children: [
                            CardList(widgets: [
                              CardItem.textField(
                                height: 49,
                                controller: _phoneNum,
                                title: 'Tên đăng nhập',
                                isSelected: false,
                                hintText: 'Nhập email',
                                textAlign: TextAlign.end,
                                hasDivider: true,
                                backgroundColor: AppColor.transparent,
                                // borderRadius: BorderRadius.only(topRight:Radius.circular(10)),
                              ),
                              CardItem.textField(
                                height: 49,
                                controller: _pass,
                                title: 'Mật khẩu',
                                isSelected: false,
                                hintText: 'Nhập mật khẩu',
                                textAlign: TextAlign.end,
                                hasDivider: false,
                                backgroundColor: AppColor.transparent,
                                obscure: true,
                                // borderRadius: BorderRadius.only(topRight:Radius.circular(10)),
                              ),
                            ]),
                            // Container(
                            //     decoration: BoxDecoration(
                            //       color: Theme.of(context)
                            //           .scaffoldBackgroundColor,
                            //       //borderRadius: BorderRadius.circular(5),
                            //     ),
                            //     child: AppTextFormField(
                            //       keyboardType: TextInputType.text,
                            //       lowerCase: true,
                            //       prefix: const Text(
                            //         "Mật khẩu",
                            //         style: TextStyle(
                            //           fontWeight: FontWeight.w700,
                            //           fontFamily: "Be  Vietnam Pro",
                            //           fontSize: 17,
                            //         ),
                            //       ),
                            //       controller: _pass,
                            //       textStyle: TextStyle(
                            //         fontWeight: FontWeight.w500,
                            //         fontFamily: "Be  Vietnam Pro",
                            //         fontSize: 15,
                            //       ),
                            //       hint: 'Nhập mật khẩu',
                            //       hasBorder: false,
                            //       isPassword: true,
                            //       fillColor: AppColor.graylight,
                            //     )),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: Transform.scale(
                                            scale: 0.8,
                                            child: AppSwitch(
                                                initValue: isSavePassword,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isSavePassword = value!;
                                                  });
                                                }),
                                          )),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            isSavePassword = !isSavePassword;
                                          });
                                        },
                                        child: Text(
                                          'Lưu mật khẩu',
                                          style: TextStyle(
                                            color: AppColor.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => ForgotPasswordScreen()));
                                    },
                                    child: Text(
                                      'Quên mật khẩu?',
                                      style: TextStyle(
                                        color: AppColor.orangeDark,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              BlocListener<LoginBloc, LoginState>(
                                listener: (context, loginState) {
                                  loginState.maybeMap(
                                      success: (loginState) {
                                        context.go('/transaction');
                                        // context.read<StockInfoBloc>().add(StockInfoEvent.fetch(code: "CTF"));
                                        context.read<UserInfoBloc>().add(const UserInfoEvent.fetch());
                                      },
                                      orElse: () {});
                                },
                                child: Center(
                                  child: Container(
                                    height: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(99, 99, 102, 0.2)
                                          .withOpacity(0.2),
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
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          // padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                                        ),
                                        onPressed: () {
                                          _handleLogin();
                                        },
                                        child: const Text(
                                          'Đăng nhập',
                                          style: TextStyle(
                                            color: AppColor.orangeDark,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Column(children: [
                              //   Container(
                              //     margin: const EdgeInsets.fromLTRB(0, 17, 0, 5),
                              //     child: const Text(
                              //       'Chưa là thành viên của ViCK?',
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontSize: 15,
                              //         fontWeight: FontWeight.w400,
                              //         fontFamily: "Be  Vietnam Pro",
                              //       ),
                              //     ),
                              //   )
                              // ])
                              const SizedBox(
                                height: 52,
                              ),
                              AppImage(path: AppAsset.loginBanner)
                            ])
                      ]))
                ]))),
      ),
    );
  }
}
