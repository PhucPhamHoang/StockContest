import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/businessLogic/bloc/login/login_bloc.dart';
import 'package:untitled/data/model/LoginModel.dart';
import 'package:untitled/utils/render/ElemRender.dart';
import 'package:untitled/utils/render/UIrender.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _phoneNum = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  late SharedPreferences loginPreference;

  void _handleLogin() {
    if (_phoneNum.text.isNotEmpty && _pass.text.isNotEmpty) {
      BlocProvider.of<LoginBloc>(context).add(
        LoginEvent.fetch(
          _phoneNum.value.text.trim(),
          _pass.value.text,
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Stack(children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/background/sign_in_back.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/background/sign_in_front.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.bottomCenter,
            child: Column(children: [
              GestureDetector(
                child: Container(
                  width: 150,
                  height: 30,
                  margin: const EdgeInsets.only(top: 120),
                  child: SvgPicture.asset(
                    'assets/logo/ViCK_white.svg',
                    color: Colors.orange,
                    semanticsLabel: 'ViCK Logo',
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(45, 20, 45, 0),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: _phoneNum,
                        decoration: InputDecoration(
                          labelText: 'Số điện thoại',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Be  Vietnam Pro",
                            fontSize: 15,
                          ),
                          fillColor: Colors.black45,
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: _pass,
                        decoration: InputDecoration(
                          labelText: 'Mật khẩu',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Be  Vietnam Pro",
                            fontSize: 15,
                          ),
                          fillColor: Colors.black45,
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // SizedBox(
                              //   width: 25,
                              //   height: 25,
                              //   child: InkWell(
                              //     onTap: () {
                              //       setState(() {
                              //       });
                              //     },
                              // )),
                              Text(
                                'Lưu mật khẩu',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Quên mật khẩu?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Center(
                            child: Container(
                              height: 40,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffec702e),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.8, 1),
                                  colors: <Color>[
                                    Color(0xffec702e),
                                    Color(0xffff9500)
                                  ],
                                  // Gradient from https://learnui.design/tools/gradient-generator.html
                                  tileMode: TileMode.mirror,
                                ),
                              ),
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
                                  _handleLogin();
                                  // if (_phoneNum.text.trim() ==
                                  //     loginList.first.phoneNumber &&
                                  //     _pass.text.trim() ==
                                  //         loginList.first.password)
                                  // {
                                  //   UIrender.showDialog(context, "Thông báo",
                                  //       "Đăng nhập thành công");
                                  //   loginPreference.setString("phoneNum", _phoneNum.text.trim());
                                  //   loginPreference.setString("pass", _pass.text.trim());
                                  // }
                                  // else
                                  //   UIrender.showDialog(context, "Thông báo",
                                  //       "Thông tin số điện thoại hoặc mật khẩu không đúng");
                                },
                                child: const Text(
                                  'Đăng nhập',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 17, 0, 5),
                              child: const Text(
                                'Chưa là thành viên của ViCK?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Be  Vietnam Pro",
                                ),
                              ),
                            )
                          ])
                        ])
                  ]))
            ]))
      ])),
    );
  }

}