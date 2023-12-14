import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:untitled/businessLogic/bloc/contest_rank/contest_rank_bloc.dart';
import 'package:untitled/data/model/ContestRankModel.dart';
import 'package:untitled/data/repository/ContestRepository.dart';
import 'package:untitled/data/static/extension/DoubleExtension.dart';
import 'package:untitled/presentation/components/AppAsset.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppImage.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/AvartarStatus.dart';

class ContestAchivementScreen extends StatefulWidget {
  final ContestRankModel rankModel;
  const ContestAchivementScreen({super.key, required this.rankModel});

  @override
  State<ContestAchivementScreen> createState() =>
      _ContestAchivementScreenState();
}

class _ContestAchivementScreenState extends State<ContestAchivementScreen> {
  String? image;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContestRankBloc(context.read<ContestRepository>())
        ..add(ContestRankEvent.fetch()),
      child: AppLayout(
          appBar: const AppBarCustom(
            autoLeading: true,
            title: 'Trang cá nhân',
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  // onTap: () async {
                  //   var imageCamera =
                  //       await AppBottomSheet.showImagePickerBottomSheet(
                  //           context: context);
                  //   if (imageCamera != null) {
                  //     setState(() {
                  //       image = imageCamera;
                  //     });
                  //   }
                  // },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 25,
                    ),
                    width: 90,
                    height: 90,
                    child: AvatarStatus(
                      padding: widget.rankModel.avatar != null ? 0 : null,
                      backgroundColor: AppColor.gray2Dark,
                      image: widget.rankModel.avatar ?? AppAsset.userDefault,
                    ),
                  ),
                ),
                Text(widget.rankModel.fullname??"",
                    style: AppStyle.hugeMedium.copyWith(fontSize: 27)),
                Text('ID:  ${widget.rankModel.userId}',
                    style: AppStyle.largeMedium
                        .copyWith(color: AppColor.grayDark)),
                const SizedBox(
                  height: 30,
                ),
                Container(),
                // CardList(widgets: [
                //   CardItem.normal(title: 'Tham gia nền tảng', value: '')
                // ]),
                // const SizedBox(
                //   height: 30,
                // ),
                // const AppTitle(leading: 'THÀNH TỰU'),
                // BlocBuilder<ContestRankBloc, ContestRankState>(
                //     builder: (context, state) {
                //   return CardList(
                //       widgets: state.data.ranks
                //           .map((e) => buildAchivement(e))
                //           .toList());
                // }),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          )),
    );
  }

  Widget buildAchivement(ContestRankModel contestRank) {
    var icon = AppAsset.commonRewardIcon;
    String prize = 'Giải ${contestRank.ranking}';
    if (contestRank.ranking == 1) {
      icon = AppAsset.goldenRewardIcon;
      prize = 'Giải nhất';
    } else if (contestRank.ranking == 2) {
      icon = AppAsset.silverRewardIcon;
      prize = 'Giải nhì';
    } else if (contestRank.ranking == 3) {
      icon = AppAsset.bronzeRewardIcon;
      prize = 'Giải ba';
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Text(
                contestRank.challengeCodeId,
                style: AppStyle.hugeMedium,
              ),
            ),
            AppImage(
              path: icon,
              width: 20,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.navigate_next,
                  color: AppColor.grayDark,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                contestRank.subAccountId,
                style: AppStyle.medianRegular,
              ),
            ),
            Text(prize, style: AppStyle.medianRegular),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(contestRank.nav?.toStringAsSeparator ?? '',
                    style: AppStyle.medianRegular),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                '#${contestRank.ranking}',
                style: AppStyle.smallRegular,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '${contestRank.percent?.toStringAsSeparator}%',
                  style:
                  AppStyle.medianRegular.copyWith(color: AppColor.grayDark),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
