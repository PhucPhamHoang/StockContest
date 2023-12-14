import 'dart:convert';

import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest/contest_bloc.dart';
import 'package:untitled/data/repository/ContestRepository.dart';
import 'package:untitled/data/static/enum/ContestStatusEnum.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppSearchTextField.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/card/card_item.dart';

class SelectableBottomSheetContest<T> extends StatefulWidget {
  final List<T> listItems;
  final Widget? header;
  final String? title;
  final bool isSearch;
  const SelectableBottomSheetContest(
      {super.key,
        required this.listItems,
        required this.isSearch,
        this.header,
        this.title});

  @override
  State<SelectableBottomSheetContest> createState() =>
      _SelectableBottomSheetState<T>();
}

class _SelectableBottomSheetState<T>
    extends State<SelectableBottomSheetContest<T>> {
  List<T> listData = [];
  ScrollController scrollController = ScrollController();
  TextEditingController controller = TextEditingController();
  int pageEnum = 1;
  late ContestBloc contestBloc;
  @override
  void initState() {
    super.initState();
    listData = widget.listItems;
    scrollController.addListener(() {
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        pageEnum += 1;
        contestBloc.add(ContestEvent.fetch(
            pageEnum: pageEnum + 1,
            name: controller.text.isNotEmpty ? controller.text : null,
            recordPerPage: 25));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      contestBloc = ContestBloc(context.read<ContestRepository>())
        ..add(
          ContestEvent.fetch(pageEnum: pageEnum, recordPerPage: 20),
        ),
      child: Padding(
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
                child: Builder(builder: (context) {
                  return AppSearchTextField(
                    onChanged: (value) {
                      context.read<ContestBloc>().add(
                        ContestEvent.fetch(
                            pageEnum: pageEnum,
                            recordPerPage: 20,
                            name: value.toUpperCase()),
                      );
                    },
                  );
                }),
              ),
            Expanded(
              child: BlocBuilder<ContestBloc, ContestState>(
                builder: (context, state) {
                  var listData = state.data.listContest
                      .map((e) => SelectableDataContest(
                      name:
                      '${e.ChallengeCodeId} - ${e.tradeState.title}',
                      id: e.ChallengeCodeId,
                      data: e))
                      .toList();
                  return SingleChildScrollView(
                    controller: scrollController,
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  dynamic buildSelectableItem(dynamic item) {
    if (item is String) {
      return item;
    } else if (item is Widget) {
      return item;
    } else if (item is SelectableDataContest) {
      return Text(item.name, style: AppStyle.medianRegular);
    } else {
      return Text(item?.toString() ?? '');
    }
  }
}

class SelectableDataContest<T> {
  final String name;
  final String id;
  final T? data;
  SelectableDataContest({
    required this.name,
    required this.id,
    required this.data,
  });

  SelectableDataContest<T> copyWith({
    String? name,
    String? id,
    T? data,
  }) {
    return SelectableDataContest<T>(
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

    return other is SelectableDataContest<T> &&
        other.name == name &&
        other.id == id &&
        other.data == data;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode ^ data.hashCode;
}
