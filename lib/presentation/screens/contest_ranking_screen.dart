import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:untitled/businessLogic/bloc/contest/contest_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_rank/contest_rank_bloc.dart';
import 'package:untitled/businessLogic/bloc/user_info/user_info_bloc.dart';
import 'package:untitled/data/model/ContestModel.dart';
import 'package:untitled/data/model/ContestRankModel.dart';
import 'package:untitled/data/repository/ContestRepository.dart';
import 'package:untitled/data/static/enum/ContestStatusEnum.dart';
import 'package:untitled/data/static/extension/DoubleExtension.dart';
import 'package:untitled/presentation/components/AppAsset.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppConstant.dart';
import 'package:untitled/presentation/components/AppImage.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/AppSearchTextField.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/AppSwitchButton.dart';
import 'package:untitled/presentation/components/AppTitle.dart';
import 'package:untitled/presentation/components/AvartarCircle.dart';
import 'package:untitled/presentation/components/bottomSheet/AppBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/SelectableBottomSheet.dart';
import 'package:untitled/presentation/components/bottomSheet/SelectableBottomSheetContest.dart';
import 'package:untitled/presentation/components/card/AppDivider.dart';
import 'package:untitled/presentation/components/card/app_card.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';
import 'package:untitled/presentation/components/text_form_field/AppTextFormField.dart';
import 'package:untitled/presentation/screens/ContestWinnerDetailScreen.dart';

class ContestRankingScreen extends StatefulWidget {
  final ContestModel? contest;
  const ContestRankingScreen({super.key, this.contest});

  @override
  State<ContestRankingScreen> createState() => _ContestRankingScreenState();
}

class _ContestRankingScreenState extends State<ContestRankingScreen> {
  ScrollController scrollController = ScrollController();
  TextEditingController textController = TextEditingController();
  FocusNode focusNode = FocusNode();
  late ContestRankBloc contestRankBloc;
  ContestModel? currentContest;
  int pageEnum = 1;
  TextEditingController contextController = TextEditingController();
  bool isMyRank = false;
  @override
  void initState() {
    super.initState();
    currentContest = widget.contest;
    scrollController.addListener(() {
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        print("pagenumco${pageEnum}");
        contestRankBloc.add(ContestRankEvent.fetch(
            pageNum: pageEnum + 1,
            name: textController.text.isNotEmpty ? textController.text : null,
            isMyRank: isMyRank,
            challengeCodeId: currentContest?.ChallengeCodeId));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String? username = context.read<UserInfoBloc>().userInfoModel?.userid;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => contestRankBloc =
          ContestRankBloc(context.read<ContestRepository>())
            ..add(ContestRankEvent.fetch(
                challengeCodeId: currentContest?.ChallengeCodeId, isMyRank: isMyRank,)),
        ),
        BlocProvider(
          create: (context) => ContestBloc(context.read<ContestRepository>())
            ..add(
              ContestEvent.fetch(pageEnum: pageEnum, recordPerPage: 20),
            ),
        ),
      ],
      child: AppLayout(
        appBar: AppBarCustom(
          title: "Bảng xếp hạng",
          autoLeading: widget.contest != null ? true : false,
        ),
        body: BlocBuilder<ContestBloc, ContestState>(
          builder: (context, stateContest) {
            if (widget.contest == null) {
              var first = stateContest.data.listContest.firstOrNull;
              if (first != null) {
                stateContest.maybeMap(
                    success: (state) => context.read<ContestRankBloc>().add(
                        ContestRankEvent.fetch(
                            challengeCodeId: first.ChallengeCodeId, isMyRank: isMyRank)),
                    orElse: () {});
              }

              if (contextController.text.isEmpty && first != null) {
                // ignore: prefer_interpolation_to_compose_strings
                currentContest = first;
                contextController.text =
                '${first.ChallengeCodeId} - ${first.tradeState.title}';
              }
            }
            return BlocBuilder<ContestRankBloc, ContestRankState>(
              builder: (context, state) {
                pageEnum = state.data.pageNum;

                return Column(
                  children: [
                    const SizedBox(height: AppConstant.marginContent),
                    widget.contest != null
                        ? AppTitle(
                      leading:
                      'CUỘC THI: ${widget.contest?.ChallengeCodeId} - ${widget.contest?.tradeState.title}',
                    )
                        : Column(
                      children: [
                        const AppTitle(
                          leading: 'CHỌN CUỘC THI',
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        AppTextFormField.selectable(
                            controller: contextController,
                            selectables: stateContest.data.listContest
                                .map((e) => SelectableData(
                                name:
                                '${e.ChallengeCodeId} - ${e.tradeState.title}',
                                id: e.ChallengeCodeId,
                                data: e))
                                .toList(),
                            onTap: () async {
                              var data = await AppBottomSheet
                                  .showSelectableContest(
                                title: 'Chọn cuộc thi',
                                context: context,
                                listItems: [],
                              );
                              if (data is String && data.isNotEmpty) {
                                contextController.text = data;
                              }
                              if (data is SelectableDataContest) {
                                contextController.text = data.name;
                                currentContest = data.data;
                                pageEnum = 1;
                                // currentContest = stateContest
                                //     .data.listContest
                                //     .firstWhereOrNull((element) =>
                                //         element.competitionCode == code);

                                contestRankBloc.add(
                                    ContestRankEvent.fetch(
                                        pageNum: pageEnum,
                                        isMyRank: isMyRank,
                                        name:
                                        textController.text.isNotEmpty
                                            ? textController.text
                                            : null,
                                        challengeCodeId: data.id));
                              }
                            },
                            onChanged: (code) {
                              pageEnum = 1;
                              // currentContest = stateContest
                              //     .data.listContest
                              //     .firstWhereOrNull((element) =>
                              //         element.competitionCode == code);

                              contestRankBloc.add(ContestRankEvent.fetch(
                                  pageNum: pageEnum,
                                  isMyRank: isMyRank,
                                  name: textController.text.isNotEmpty
                                      ? textController.text
                                      : null,
                                  challengeCodeId: code));
                            },
                            paddingRightSuffix: 5,
                            suffix: Container(
                                width: 28,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    color: AppColor.gray2Dark
                                        .withOpacity(0.2)),
                                child: const Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColor.white,
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Bảng xếp hạng dựa trên giá trị tài sản ròng (NAV) của subaccount tham gia cuộc thi. ",
                      style: AppStyle.normalRegular
                          .copyWith(color: AppColor.grayDark),
                    ),
                    const SizedBox(
                      height: AppConstant.spacingDefault,
                    ),
                    (currentContest?.tradeState != null &&
                        currentContest?.tradeState !=
                            CompetitionStatusEnum.notOpenTrade)
                        ? Expanded(
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          children: [
                            AppSearchTextField(
                              placeHolder: 'Tìm kiếm nhà đầu tư',
                              controller: textController,
                              focusNode: focusNode,
                              onTap: () {
                                context.read<ContestRankBloc>().add(
                                    ContestRankEvent.filter(
                                        isMyRank: isMyRank));
                              },
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  context.read<ContestRankBloc>().add(
                                      ContestRankEvent.fetch(
                                          isMyRank: isMyRank,
                                          pageNum: 1,
                                          name: value,
                                          challengeCodeId: currentContest
                                              ?.ChallengeCodeId));
                                }
                              },
                              onSuffixTap: () {
                                textController.clear();
                                pageEnum = 1;
                                context.read<ContestRankBloc>().add(
                                  ContestRankEvent.fetch(
                                      isMyRank: isMyRank,
                                      pageNum: 1,
                                      challengeCodeId: currentContest
                                          ?.ChallengeCodeId),
                                );
                              },
                              onDone: () {
                                var text = textController.text;
                                context.read<ContestRankBloc>().add(
                                  ContestRankEvent.fetch(
                                      isMyRank: isMyRank,
                                      pageNum: 1,
                                      name: text.isNotEmpty
                                          ? text
                                          : null,
                                      challengeCodeId: currentContest
                                          ?.ChallengeCodeId),
                                );
                                focusNode.unfocus();
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            state.maybeMap(waiting: (state) {
                              if (isMyRank != state.isMyRank) {
                                pageEnum = 1;
                                isMyRank = state.isMyRank;
                              }

                              return _buildFilter();
                            }, orElse: () {
                              return CardList(
                                backgroundColor: AppColor.transparent,
                                widgets: List.generate(
                                  state.data.ranks.length,
                                      (index) {
                                    print(state.data.ranks.length,);
                                    var item = state.data.ranks[index];
                                    return currentContest
                                        ?.tradeState ==
                                        CompetitionStatusEnum.stopTrade
                                        ? buildFinish(item, username)
                                        : CardItem.extend(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => ContestWinnerDetailScreen(
                                              contestRank: item,
                                            )));
                                      },
                                      height: 70,
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,

                                      title: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .center,
                                        children: [
                                          SizedBox(
                                            width: 50,
                                            child: Text(
                                              "#${item.ranking ?? (index + 1)}",
                                              style: AppStyle
                                                  .largeRegular
                                                  .copyWith(
                                                  color: AppColor
                                                      .white),
                                            ),
                                          ),
                                          item.avatar?.isNotEmpty ==
                                              true
                                              ? AvatarCircle(
                                            height: 50,
                                            width: 50,
                                            fit: null,
                                            path: item.avatar,
                                            padding: 0,
                                            backgroundColor:
                                            AppColor
                                                .grayDark,
                                          )
                                              : AvatarCircle(
                                            height: 30,
                                            width: 30,
                                            fit: null,
                                            path: AppAsset
                                                .userDefault,
                                            padding: 10,
                                            backgroundColor:
                                            AppColor
                                                .grayDark,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                item.fullname??"",
                                                style: AppStyle
                                                    .largeRegular
                                                    .copyWith(
                                                  color: username == item.userId
                                                      ? AppColor
                                                      .greenDark
                                                      : AppColor
                                                      .white,
                                                ),
                                              ),
                                              Text(item.subAccountId,
                                                  style: AppStyle
                                                      .smallRegular
                                                      .copyWith(
                                                      color: AppColor
                                                          .grayDark)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      // value: item.total.toStringAsSeparator,
                                      // subvalue:
                                      //     "${item.total > 0 ? '+' : '-'}${item.total.toStringAsSeparator}%",
                                      hasDivider: index !=
                                          state.data.ranks.length -
                                              1,
                                    );
                                  },
                                ),
                              );
                            }),
                            const SizedBox(
                              height: AppConstant.marginContent,
                            )
                          ],
                        ),
                      ),
                    )
                        : Text(
                      "Bảng xếp hạng sẽ được cập nhật tại thời điểm bắt đầu giao dịch.",
                      style: AppStyle.normalRegular
                          .copyWith(color: AppColor.grayDark),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
  // Widget buildRank

  Widget _buildFilter() {
    return Builder(builder: (context) {
      return CardList(widgets: [
        CardItem.normal(
          // height: 48,
          // backgroundColor: AppColor.transparent,
          title: 'Thứ hạng của tôi',
          value: AppSwitch(
            autoChange: false,
            initValue: isMyRank,
            onChanged: (val) {
              context
                  .read<ContestRankBloc>()
                  .add(ContestRankEvent.filter(isMyRank: !isMyRank));
            },
          ),
        ),
      ]);
    });
  }

  Widget buildFinish(ContestRankModel contestRank, String? username) {
    var icon = AppAsset.commonRewardIcon;
    if (contestRank.ranking == 1) {
      icon = AppAsset.goldenRewardIcon;
    } else if (contestRank.ranking == 2) {
      icon = AppAsset.silverRewardIcon;
    } else if (contestRank.ranking == 3) {
      icon = AppAsset.bronzeRewardIcon;
    }
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ContestWinnerDetailScreen(
              contestRank: contestRank,
            )));
      },
      child: AppCard(
        // backgroundColor: AppColor.grayDark.withOpacity(0.2),
          borderRadius: BorderRadius.circular(0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    children: [
                      contestRank.avatar?.isNotEmpty == true
                          ? AvatarCircle(
                        height: 50,
                        width: 50,
                        fit: null,
                        path: contestRank.avatar,
                        padding: 0,
                        backgroundColor: AppColor.grayDark,
                      )
                          : AvatarCircle(
                        height: 30,
                        width: 30,
                        fit: null,
                        path: AppAsset.userDefault,
                        padding: 10,
                        backgroundColor: AppColor.grayDark,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    contestRank.fullname??"",
                                    style: AppStyle.largeRegular.copyWith(
                                      color: username == contestRank.userId
                                          ? AppColor.greenDark
                                          : AppColor.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    contestRank.subAccountId,
                                    style: AppStyle.smallRegular
                                        .copyWith(color: AppColor.grayDark),
                                  ),
                                ),
                                Text(
                                  contestRank.nav
                                      ?.toInt()
                                      .toDouble()
                                      .toStringAsSeparator ??
                                      '',
                                  style: AppStyle.smallRegular
                                      .copyWith(color: AppColor.grayDark),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '#${contestRank.ranking}',
                                    style: AppStyle.smallRegular
                                        .copyWith(color: AppColor.grayDark),
                                  ),
                                ),
                                Text(
                                    '${contestRank.percent?.toStringAsSeparator ?? ''}%',
                                    style: AppStyle.smallRegular
                                        .copyWith(color: AppColor.grayDark)),
                                const Icon(Icons.navigate_next,
                                    color: AppColor.grayDark),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const AppDivider(
                  thickness: 0.2,
                )
              ],
            ),
          )),
    );
  }
}
