import 'package:flutter/material.dart';
import 'package:untitled/data/model/TableModel.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppStyle.dart';

class AppTableComponent extends StatefulWidget {
  final List<TableData> headerData;
  final List<List<TableData>> contentData;
  final double? heightRow;
  const AppTableComponent({
    super.key,
    required this.headerData,
    required this.contentData,
    this.heightRow,
  });

  @override
  State<AppTableComponent> createState() => _AppTableComponentState();
}

class _AppTableComponentState extends State<AppTableComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildHeader(),
        Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: AppColor.gray2Dark.withOpacity(0.2),
              ),
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.contentData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildContentRow(index);
                  }),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.only(left: 13),
      constraints: const BoxConstraints(
        minHeight: 36,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: AppColor.gray2Dark.withOpacity(0.4),
      ),
      child: Row(
        children: [
          for (TableData model in widget.headerData) _buildHeaderItem(model),
        ],
      ),
    );
  }

  Widget _buildHeaderItem(TableData itemData) {
    var data = itemData.value;
    return Expanded(
      flex: itemData.flex,
      child: Container(
        alignment: itemData.alignment ?? Alignment.center,
        margin: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 4,
        ),
        child: data is String
            ? Text(
          data,
          style: AppStyle.largeRegular,
        )
            : data,
      ),
    );
  }

  Widget _buildContentRow(int index) {
    var data = widget.contentData[index];
    return Container(
      // key: Key('$index'),
      height: widget.heightRow,
      constraints: const BoxConstraints(
        minHeight: 32,
      ),
      decoration: BoxDecoration(
          border: (index != widget.contentData.length - 1)
              ? const Border(
              bottom: BorderSide(
                color: AppColor.grayDark,
                width: 0.2,
              ))
              : null),
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: data.map((item) {
          return _buildContentItem(
            item,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildContentItem(
      TableData contentData,
      ) {
    var data = contentData.value;
    return Expanded(
      flex: contentData.flex,
      child: Container(
          alignment: contentData.alignment,
          margin: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 4,
          ),
          child: data is String
              ? Text(data,
              style: contentData.textStyle ?? AppStyle.largeRegular)
              : data),
    );
  }
}
