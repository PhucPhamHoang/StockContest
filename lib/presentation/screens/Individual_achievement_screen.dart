// import 'package:flutter/cupertino.dart';
// import 'package:untitled/presentation/components/AppBarCustom.dart';
// import 'package:untitled/presentation/components/AppLayout.dart';
// import 'package:untitled/presentation/components/AvartarStatus.dart';
//
// class IndividualAchievementScreen extends StatefulWidget{
//   @override
//   State<IndividualAchievementScreen> createState() => _IndividualAchievementScreenState();
// }
//
// class _IndividualAchievementScreenState extends State<IndividualAchievementScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return AppLayout(
//         appBar: AppBarCustom(
//           leading: "Thành tích cá nhân",
//           autoLeading: true,
//         ),
//         body: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.only(
//                 top: 25,
//               ),
//               width: 90,
//               height: 90,
//               child: AvatarStatus(
//                 padding: widget.rankModel.avatar != null ? 0 : null,
//                 backgroundColor: AppColor.gray2Dark,
//                 image: widget.rankModel.avatar ?? AppAsset.userDefault,
//               ),
//             ),
//           ],
//         )
//     );
//   }
// }