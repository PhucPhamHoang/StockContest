import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/data/static/ApplicationSetting.dart';
import 'package:untitled/utils/service/DebugService.dart';


enum RequestType{get,post}

class NetworkService{
  const NetworkService._();

  static String domain = 'https://stalkuat.hanzo.finance';
  static Future<http.Response?>? _createRequest({
    required RequestType requestType,
    required String url,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    if (requestType == RequestType.get) {
      return http.get(
        Uri.parse(domain + url),
        headers: headers,
      );
    }
    if (requestType == RequestType.post) {

        // http.MultipartRequest request = http.MultipartRequest(
        //   'POST',
        //   Uri.parse(domain + url),
        // );
        // if (body != null) {
        //   // request.files.add(body['file']);
        //   // request.fields['session'] = body['session'];
        //   // request.fields['fileindex'] = '0';
        //   return http.Response.fromStream(await request.send());
        //
        // }

      return http.post(
        Uri.parse(domain + url),
        headers: headers,
        body: jsonEncode(body),
      );
    }

    return null;
  }

  static Future<http.Response?>? sendRequest({
    required RequestType requestType,
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? queryParam,
  }) async {
    try {
      Map<String, String> header = ApplicationSetting.instance.requestHeader;
      if (url.contains('/login')) {
        header['noti-token'] = ApplicationSetting.instance.notiToken;
      } else {
        header.remove('noti-token');
      }
      header['content-type'] = 'application/json';
      header['origin'] = 'hanzo.finance';
      DateTime start = DateTime.now();
      var sw = Stopwatch()..start();

      print('api time call start $url ${sw.elapsedMilliseconds}');
      final http.Response? response = await _createRequest(
          requestType: requestType,
          url: url,
          headers: header,
          body: body,
        );

      int timeResponse = DateTime.now().difference(start).inMilliseconds;

      DebugService.printConsole('');
      DebugService.printConsole('****DEBUG LOG****');
      DebugService.printConsole('');
      DebugService.printConsole(header);
      DebugService.printConsole('${timeResponse}ms: $url | $body');
      DebugService.printConsole('Status code: ${response?.statusCode}');
      DebugService.printConsole(response?.body);
      DebugService.printConsole('');
      DebugService.printConsole('****END DEBUG LOG****');
      DebugService.printConsole('');

      if (response != null) {
        if (response.statusCode == 502 || response.statusCode == 504) {
        }
      }

      return response;
    } catch (e) {
      DebugService.printConsole('Error - $e');
      rethrow;
    }
  }
}