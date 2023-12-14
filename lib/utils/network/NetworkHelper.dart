import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:untitled/data/model/DefaultResponseModel.dart';
import 'package:untitled/data/static/ApplicationSetting.dart';
import 'package:untitled/data/static/enum/SharedPreferencesEnum.dart';
import 'package:untitled/utils/service/DebugService.dart';
import 'NetworkEnum.dart';
import 'NetworkTypedef.dart';


class NetworkHelper{
  const NetworkHelper._();

  static R filterResponse<R>({
    required NetworkCallBack callBack,
    required http.Response? response,
    required NetworkOnFailureCallBackWithMessage onFailureCallBackWithMessage,
    CallBackParameterName parameterName = CallBackParameterName.all,
    bool returnAll = false,
  }) {
    try {
      if (response == null) {
        return onFailureCallBackWithMessage(
            NetworkResponseErrorType.responseEmpty, 'empty response', '');
      }

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);

        String host = response.request?.url.host ?? '';

        if (!host.contains('uploadfile')) {
          if (response.headers.containsKey('set-cookie')) {
            ApplicationSetting.instance.sharedPreferences.setString(
                SharedPreferencesEnum.SET_COOKIE_DATA.name,
                response.headers['set-cookie'].toString());

            ApplicationSetting.instance.sharedPreferences.setString(
              SharedPreferencesEnum.SNBSESSION.name,
              response.headers['set-cookie'].toString().substring(
                response.headers['set-cookie'].toString().indexOf('=') + 1,
                response.headers['set-cookie'].toString().indexOf(';'),
              ),
            );

            ApplicationSetting.instance.requestHeader =
                updateHeaders(response.headers);
          }
        }

        if (json != null) {
          DefaultResponseModel response = DefaultResponseModel.fromJson(json);
          if (response.result != 'fail') {
            Map<String, dynamic> data = {};
            List<dynamic> list = [];

            if (returnAll) {
              return callBack(parameterName.getJson(json));
            }

            bool decodeJsonSucceeded = false;
            bool decodeListSucceeded = false;

            if (response.content[0] == '{') {
              try {
                data = jsonDecode(response.content) as Map<String, dynamic>;
                decodeJsonSucceeded = true;
              } on FormatException catch (e) {
                DebugService.printConsole(e);
                decodeJsonSucceeded = false;
              }
            } else if (response.content[0] == '[') {
              try {
                list = jsonDecode(response.content) as List<dynamic>;
                decodeListSucceeded = true;
              } on FormatException catch (e) {
                DebugService.printConsole(e);
                decodeListSucceeded = false;
              }
            }

            if (decodeListSucceeded) {
              return callBack(parameterName.getJson(list));
            } else if (decodeJsonSucceeded) {
              return callBack(parameterName.getJson(data));
            } else {
              return callBack(parameterName.getJson(json));
            }
          } else {
            String errorContent = response.content ?? response.errorcode;

            if (response.errorcode != null) {
              if (response.errorcode.toString().contains('ERROR_')) {
                DebugService.printConsole(response.errorcode);
              } else {
                errorContent = response.errorcode!;
              }
            }

            try {
              errorContent = utf8.decode(
                latin1.encode(errorContent),
                allowMalformed: true,
              );
            } catch (e) {
              DebugService.printConsole(e);
            }

            return onFailureCallBackWithMessage(
                NetworkResponseErrorType.exception,
                errorContent,
                response.content);
          }
        }
      } else if (response.statusCode == 1708) {
        return onFailureCallBackWithMessage(
            NetworkResponseErrorType.socket, 'socket', '');
      } else {
        return onFailureCallBackWithMessage(NetworkResponseErrorType.errorCode,
            'NETWORK_${response.statusCode}', '');
      }
      return onFailureCallBackWithMessage(
          NetworkResponseErrorType.didNotSucceed, 'unknown', '');
    } catch (e) {
      return onFailureCallBackWithMessage(
          NetworkResponseErrorType.exception, '$e', '');
    }
  }

  static Map<String, String> updateHeaders(Map<String, String> headers) {
    String rawCookie = headers['set-cookie'] ?? '';
    List<String> rawCookies = rawCookie.split(',');
    String newCookie = '';

    for (String cookie in rawCookies) {
      if (!cookie.split(';')[0].contains('GMT')) {
        newCookie = '$newCookie${cookie.split(';')[0]};';
      }
    }

    Map<String, dynamic> header =
        ApplicationSetting.instance.requestHeader;
    header['cookie'] = newCookie;
    header['os-type'] = 'android';
    headers['Accept'] = '*/*';
    headers['connection'] = 'keep-alive';
    headers['Accept-Encoding'] = 'gzip, deflate, br';
    headers = Map.from(header);
    headers['content-type'] = 'application/json';
    headers['origin'] = 'hanzo.finance';
    ApplicationSetting.instance.sharedPreferences.setString(
      SharedPreferencesEnum.HEADER.name,
      json.encode(headers),
    );
    return headers;
  }
}