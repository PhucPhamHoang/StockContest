import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/static/enum/ContestFilterTypeEnum.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';

class ContestFilterScreen<T> extends StatefulWidget {
  final String name;
  final List<T?> initValue;
  final List<List<FilterData<T>>> listFilter;
  final bool mutilCheck;
  const ContestFilterScreen({
    super.key,
    required this.name,
    required this.initValue,
    required this.listFilter,
    bool? multiCheck,
  }) : mutilCheck = multiCheck ?? false;

  @override
  State<ContestFilterScreen> createState() => _ContestFilterScreenState<T>();
}

class _ContestFilterScreenState<T> extends State<ContestFilterScreen<T>> {
  List<T?> selected = [];
  @override
  void initState() {
    selected = widget.initValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        appBar: AppBarCustom(
          autoLeading: true,
          title: widget.name,
          onPressLeading: () {
            context.pop(selected);
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              ...List.generate(widget.listFilter.length, (index) {
                var listSub = widget.listFilter[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: CardList(
                      widgets: List.generate(listSub.length, (index) {
                        var item = listSub[index];
                        var indexContained =
                        selected.indexWhere((element) => element == item.data);
                        return buildFilter(item, indexContained,
                            index != (listSub.length - 1), index);
                      })),
                );
              }),
            ],
          ),
        ));
  }

  Widget buildFilter(
      FilterData item, int indexContained, bool hasDivider, int index) {
    switch (item.type) {
      case FitlerTypeEnum.check:
      case FitlerTypeEnum.multiCheck:
        return InkWell(
          onTap: () {
            if (!widget.mutilCheck) {
              selected.clear();
              selected.add(item.data);
            } else {
              if (indexContained != -1) {
                selected.removeAt(indexContained);
              } else {
                selected.add(item.data);
              }
            }
            setState(() {});
          },
          child: CardItem.checkBox(
            height: 48,
            backgroundColor: AppColor.transparent,
            title: item.name,
            isSelected: indexContained != -1,
            hasDivider: hasDivider,
          ),
        );
      // case FitlerTypeEnum.dateTime:
      //   var data = item.data;
      //   dynamic value;
      //   if (data is DateTime) {
      //     value = data.textDate;
      //   }
      //   bool hasData = value != null;
      //   return ExpandableWidget(
      //       isFullTap: hasData,
      //       isExpanded: false,
      //       buildChild: (onTap, setFullTap) {
      //         return CardItem.extend(
      //           hasDivider: hasDivider,
      //           height: hasData ? 61 : 49,
      //           title: item.name,
      //           subtitle: value,
      //           value: AppSwitch(
      //             autoChange: false,
      //             initValue: hasData,
      //             onChanged: (val) {
      //               final now = DateTime.now();
      //               if (val) {
      //                 setFullTap.call(true);
      //                 value = now.textDate;
      //               } else {
      //                 setFullTap.call(false);
      //                 value = null;
      //               }
      //               selected[index] = value != null ? now : value;
      //               onTap.call(val);
      //             },
      //           ),
      //         );
      //       },
      //       buildExpandedChild: (onTap, rebuild) => Container(
      //         height: 100,
      //         child: CupertinoDatePicker(
      //           initialDateTime: data,
      //           mode: CupertinoDatePickerMode.date,
      //           use24hFormat: true,
      //           // This shows day of week alongside day of month
      //
      //           // This is called when the user changes the date.
      //           onDateTimeChanged: (DateTime newDate) {
      //             value = newDate.textDate;
      //             selected[index] = newDate as T;
      //             rebuild.call();
      //           },
      //         ),
      //       ));
    }
  }
}

class FilterData<T> {
  final T? data;
  final String name;
  final FitlerTypeEnum type;
  FilterData({
    required this.data,
    required this.name,
    FitlerTypeEnum? type,
  }) : type = type ?? FitlerTypeEnum.multiCheck;
}
