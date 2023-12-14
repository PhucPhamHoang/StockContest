import 'dart:convert';

import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppSearchTextField.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/card/card_item.dart';

class SelectableBottomSheet<T> extends StatefulWidget {
  final List<T> listItems;
  final Widget? header;
  final String? title;
  final bool isSearch;
  const SelectableBottomSheet(
      {super.key,
        required this.listItems,
        required this.isSearch,
        this.header,
        this.title});

  @override
  State<SelectableBottomSheet> createState() =>
      _SelectableBottomSheetState<T>();
}

class _SelectableBottomSheetState<T> extends State<SelectableBottomSheet<T>> {
  List<T> listData = [];
  @override
  void initState() {
    super.initState();
    listData = widget.listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          if (widget.title != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.navigate_before,
                              color: AppColor.orange,
                            ),
                            Text(
                              'Quay lại',
                              style: AppStyle.largeRegular.copyWith(
                                color: AppColor.orange,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Text(widget.title ?? '', style: AppStyle.largeRegular),
                  Expanded(
                    child: Container(),
                  )
                ],
              ),
            ),
          if (widget.isSearch)
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: AppSearchTextField(
                onChanged: (value) {
                  listData = widget.listItems.where((e) {
                    if (e is SelectableData) {
                      return removeDiacritics(e.name.toLowerCase())
                          .contains(removeDiacritics(value.toLowerCase()));
                    } else {
                      return removeDiacritics(e.toString().toLowerCase())
                          .contains(removeDiacritics(value.toLowerCase()));
                    }
                  }).toList();
                  setState(() {});
                },
              ),
            ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Row(
                  //   children: [
                  //     IconButton(
                  //       onPressed: () {
                  //         Navigator.pop(context);
                  //       },
                  //       icon: const Icon(
                  //         Icons.remove,
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Center(
                  //         child: Text(widget.title ?? ''),
                  //       ),
                  //     )
                  //   ],
                  // ),

                  ...List.generate(listData.length, (index) {
                    var item = listData[index];
                    return InkWell(
                      onTap: () {
                        Navigator.pop(context, item);
                      },
                      child: CardItem.normal(
                        title: buildSelectableItem(item),
                        hasDivider: true,
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  dynamic buildSelectableItem(dynamic item) {
    if (item is String) {
      return item;
    } else if (item is Widget) {
      return item;
    } else if (item is SelectableData) {
      return Text(item.name, style: AppStyle.medianRegular);
    } else {
      return Text(item?.toString() ?? '');
    }
  }
}

class SelectableData<T> {
  final String name;
  final String id;
  final T? data;
  SelectableData({
    required this.name,
    required this.id,
    required this.data,
  });

  SelectableData<T> copyWith({
    String? name,
    String? id,
    T? data,
  }) {
    return SelectableData<T>(
      name: name ?? this.name,
      id: id ?? this.id,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'data': data?.toString(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'SelectableModel(name: $name, id: $id, data: $data)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SelectableData<T> &&
        other.name == name &&
        other.id == id &&
        other.data == data;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode ^ data.hashCode;
}
