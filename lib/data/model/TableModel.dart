import 'package:flutter/material.dart';

class TableData {
  final dynamic value;
  final int flex;
  final Alignment? alignment;
  final TextStyle? textStyle;

  TableData({this.value, int? flex, this.alignment, this.textStyle})
      : assert(value is String || value is Widget || value is num,
  'value is String or Widget or num'),
        flex = flex ?? 1;
}
