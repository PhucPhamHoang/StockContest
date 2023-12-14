import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/card/AppDivider.dart';
import 'package:untitled/presentation/components/card/app_card.dart';

class CardList extends StatelessWidget {
  final List<Widget> widgets;
  final dynamic replace;
  final double? replaceHeight;
  final Color? replaceColor;
  final Color? backgroundColor;
  final bool? autoDivider;
  const CardList(
      {super.key,
      required this.widgets,
      this.replace,
      this.backgroundColor,
      this.replaceHeight,
      bool? autoDivider,
      this.replaceColor})
      : autoDivider = autoDivider ?? false,
        assert(replace is String || replace is Widget || replace == null,
            'replace is String or Widget');
  Widget? _buildReplace() {
    if (replace is String) {
      return SizedBox(
        height: replaceHeight ?? 61,
        child: Center(
          child: Text(
            replace,
            style: AppStyle.largeRegular.copyWith(
              color: replaceColor ?? AppColor.grayDark,
            ),
          ),
        ),
      );
    }
    return replace;
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
        backgroundColor: backgroundColor ?? AppColor.gray2Dark.withOpacity(0.2),
        child: widgets.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(widgets.length, (index) {
                  var item = widgets[index];
                  return autoDivider == true
                      ? Column(
                          children: [
                            item,
                            if ((widgets.length - 1) != index)
                              const Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: AppDivider(
                                  thickness: 0.2,
                                  color: AppColor.gray2Dark,
                                ),
                              )
                          ],
                        )
                      : item;
                }))
            : _buildReplace());
  }
}
