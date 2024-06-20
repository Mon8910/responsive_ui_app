import 'package:flutter/material.dart';
import 'package:project_app/models/drawe_item_model.dart';
import 'package:project_app/models/user_info_model.dart';
import 'package:project_app/utilies/app_image.dart';
import 'package:project_app/view/widgets/active_and_inactive_drawer_item.dart';
import 'package:project_app/view/widgets/drawe_listview.dart';
import 'package:project_app/view/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
             
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                const InActiveDrawItem(
                  draweItemModel: DraweItemModel(
                    image: (Assets.imagesSettings),
                    title: 'Setting system',
                  ),
                ),
                InActiveDrawItem(
                  draweItemModel: DraweItemModel(
                    image: (Assets.imagesLogout),
                    title: 'Logout account',
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],

        //     Expanded(child: SizedBox()),
        //     InActiveDrawItem(
        //       draweItemModel: DraweItemModel(
        //         image: (Assets.imagesSettings),
        //         title: 'Setting system',
        //       ),
        //     ),
        //     InActiveDrawItem(
        //       draweItemModel: DraweItemModel(
        //         image: (Assets.imagesLogout),
        //         title: 'Logout account',
        //       ),
        //     ),
        //     SizedBox(
        //       height: 48,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
