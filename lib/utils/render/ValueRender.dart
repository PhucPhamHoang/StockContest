import 'dart:convert';

import 'package:crypto/crypto.dart';

class ValueRender{
  const ValueRender._();
  static final instance = ValueRender._();

  String getEncodeSha256(String value) {
    Digest encode = sha256.convert(utf8.encode(value));

    return encode.toString();
  }
}