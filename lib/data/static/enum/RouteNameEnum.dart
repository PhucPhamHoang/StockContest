import 'package:flutter/cupertino.dart';

enum RouteNameEnum{
  login,
  home
}
extension RouteNameEnumEx on RouteNameEnum{
  Widget get iconRoute{
    switch(this){
      case RouteNameEnum.home:
      case RouteNameEnum.login:
        // TODO: Handle this case.
    }
    return Container();
  }
}