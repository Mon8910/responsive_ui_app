import 'package:flutter/material.dart';
import 'package:project_app/models/drawe_item_model.dart';
import 'package:project_app/utilies/app_image.dart';
import 'package:project_app/view/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget{
  const DrawerListView({super.key});
   

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
 final List<DraweItemModel> items =const [
    DraweItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DraweItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
    DraweItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DraweItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DraweItemModel(image: Assets.imagesMyInvestments, title: 'My Investments')
  ];
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
   return SliverList.builder(
           
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  if(activeIndex != index){
                    setState(() {
                    activeIndex=index;
                    print(activeIndex);
                  });
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: DrawerItem(
                    draweItemModel: items[index],
                    isActive: activeIndex==index,
                  ),
                ),
              );
            },
          );
  }
}