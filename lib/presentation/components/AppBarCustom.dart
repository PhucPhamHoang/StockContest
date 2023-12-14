import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

class AppBarCustom extends StatelessWidget {
  final dynamic title;
  final dynamic leading;
  final dynamic action;
  final double? elevation;
  final double? bottomOpacity;
  final double? titleSpacing;
  final double? leadingWidth;
  final bool? centerTitle;
  final bool forceCanNotBack;
  final bool showActions;
  final bool showBuyCard;
  final bool autoLeading;
  final void Function()? onPressLeading;
  final void Function()? onPressAction;
  final void Function()? onBack;
  final void Function()? onPressPurchase;
  const AppBarCustom({
    Key? key,
    this.title,
    this.leading,
    this.action,
    this.elevation,
    this.bottomOpacity,
    this.titleSpacing,
    this.leadingWidth,
    this.centerTitle,
    bool? forceCanNotBack,
    bool? showActions,
    bool? showBuyCard,
    bool? autoLeading,
    this.onBack,
    this.onPressPurchase,
    this.onPressLeading,
    this.onPressAction,
  })  : forceCanNotBack = forceCanNotBack ?? false,
        showActions = showActions ?? true,
        showBuyCard = showBuyCard ?? false,
        autoLeading = autoLeading ?? false,
        assert(
        title is String || title is Widget || title == null,
        'tittle is String or Widget',
        ),
        assert(
        leading is String || leading is Widget || leading == null,
        'tittle is String or Widget',
        ),
        assert(
        action is Widget ||
            action is String ||
            action is List<Widget> ||
            action == null,
        'tittle is String or Widget',
        ),
        super(key: key);
  List<Widget>? _buildAction(context) {
    if (showActions) {
      if (action is Widget) {
        return [
          InkWell(
            child: action,
            onTap: onPressAction,
          ),
          const SizedBox(
            width: 10,
          ),
        ];
      } else if (action is String) {
        return [
          InkWell(
            onTap: onPressAction,
            child: Text(
              action,
              style: AppStyle.largeRegular.copyWith(
                color: AppColor.orange,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ];
      } else if (action is List<Widget>) {
        // action
        return action;
      }
    }
    return null;
  }

  // Widget buildCard(double number) {
  //   return Row(
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       Text(
  //         ValueRender.instance.formatNumber(number),
  //         style: AppStyle.normalSemiBold.copyWith(color: AppColor.black),
  //       ),
  //       const SizedBox(
  //         width: 5,
  //       ),
  //       Container(
  //         height: 20,
  //         width: 15,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(2),
  //             gradient: const LinearGradient(
  //               begin: Alignment.topCenter,
  //               end: Alignment.bottomCenter,
  //               colors: AppColor.orangeGradientPair,
  //             )),
  //       )
  //     ],
  //   );
  // }

  Widget? _buildLeading(BuildContext context) {
    Widget? childLeading;
    if (autoLeading && Navigator.of(context).canPop()) {
      childLeading = InkWell(
        onTap: () {
          if (onPressLeading != null) {
            onPressLeading!();
          } else {
            Navigator.of(context).pop();
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.navigate_before, color: AppColor.orange),
            Text(
              'Quay lại',
              style: AppStyle.largeRegular.copyWith(
                color: AppColor.orange,
              ),
            ),
          ],
        ),
      );
    } else {
      if (leading is Widget) {
        childLeading = InkWell(
          child: leading,
          onTap: onPressLeading,
        );
      }
      if (leading is String) {
        childLeading = InkWell(
          onTap: onPressLeading,
          child: Text(
            leading,
            style: AppStyle.largeRegular.copyWith(
              color: AppColor.orange,
            ),
          ),
        );
      }
    }
    if (childLeading != null) {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Center(child: childLeading),
      );
    }
    return null;
  }

  Widget? _buildTitle(BuildContext context) {
    if (title is Widget) {
      return title;
    }
    if (title is String) {
      return Text(
        title,
        style: AppStyle.hugeMedium.copyWith(
          color: AppColor.white,
        ),
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColor.gray3Dark.withOpacity(0.5),
      leading: _buildLeading(context),
      title: _buildTitle(context),
      actions: _buildAction(context),
      elevation: elevation,
      bottomOpacity: bottomOpacity ?? 1,
      titleSpacing: titleSpacing,
      // leadingWidth: leadingWidth,
      leadingWidth: autoLeading ? 100 : null,
      centerTitle: true,
    );
  }
}
