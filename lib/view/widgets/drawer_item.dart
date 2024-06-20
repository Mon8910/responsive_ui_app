import 'package:flutter/material.dart';
import 'package:project_app/models/drawe_item_model.dart';
import 'package:project_app/view/widgets/active_and_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.draweItemModel,
    required this.isActive,
  });
  final DraweItemModel draweItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawItem(draweItemModel: draweItemModel)
        : InActiveDrawItem(draweItemModel: draweItemModel);
  }
}

