import 'package:flutter/material.dart';
import 'package:project_app/models/user_info_model.dart';
import 'package:project_app/utilies/app_image.dart';
import 'package:project_app/view/widgets/user_info_listtile.dart';

class LatestTranscationListView extends StatelessWidget {
  const LatestTranscationListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail')
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: e),
          );
        }).toList(),
      ),
    );

    // SizedBox(
    //   height: 80,
    //   child:

    //   ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
