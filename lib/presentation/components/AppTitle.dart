import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

class AppTitle extends StatelessWidget {
  final String leading;
  final String? trailing;
  final bool? isNavigate;
  final TextStyle? trailingStyle;
  final void Function()? onTap;
  const AppTitle(
      {super.key,
        required this.leading,
        this.trailing,
        this.onTap,
        bool? isNavigate,
        this.trailingStyle})
      : isNavigate = isNavigate ?? false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              leading,
              style: AppStyle.medianLight.copyWith(color: AppColor.grayDark),
            ),
          ),
          if (trailing != null)
            InkWell(
              onTap: onTap,
              child: Text(
                trailing ?? '',
                style: trailingStyle ??
                    AppStyle.medianRegular.copyWith(color: AppColor.orange),
              ),
            ),
          if (isNavigate == true)
            const Icon(Icons.navigate_next, color: AppColor.orange)
        ],
      ),
    );
  }
}
