import 'package:flutter/material.dart';
import 'package:untitled/data/static/enum/RouteNameEnum.dart';
import 'package:untitled/presentation/components/AppColor.dart';

class BottomNavigationCustom extends StatelessWidget {
  const BottomNavigationCustom({super.key,
    required this.onTap,
    required this.listItem,
    required this.currentIndex,
  });
  final int currentIndex;
  final List<BottomNavigationBarItem> listItem;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColor.bottomNavigationColor,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color:
           AppColor.orange,
      ),
      selectedLabelStyle: Theme.of(context)
          .bottomNavigationBarTheme
          .copyWith()
          .selectedLabelStyle
          ?.copyWith(color: AppColor.orange),
      unselectedIconTheme: IconThemeData(
        color: AppColor.grayDark,
      ),
      // unselectedLabelStyle: txtStyle.copyWith(fontSize: 12),
      unselectedFontSize: 12,
      unselectedItemColor: AppColor.grayDark,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: listItem,
      onTap: onTap,
      currentIndex: currentIndex,
      selectedItemColor: AppColor.orange,
    );
  }
}
