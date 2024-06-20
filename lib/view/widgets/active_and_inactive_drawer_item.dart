import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_app/models/drawe_item_model.dart';
import 'package:project_app/utilies/app_style.dart';


class InActiveDrawItem extends StatelessWidget {
  const InActiveDrawItem({
    super.key,
    required this.draweItemModel,
  });

  final DraweItemModel draweItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        draweItemModel.image,
      ),
      title: FittedBox(fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
        child: Text(
          draweItemModel.title,
          style: AppStyle.styleMedium16(context),
        ),
      ),
    );
  }
}

class ActiveDrawItem extends StatelessWidget {
  const ActiveDrawItem({
    super.key,
    required this.draweItemModel,
  });

  final DraweItemModel draweItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        draweItemModel.image,
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          draweItemModel.title,
          style: AppStyle.styleSemiBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.75,
        color: const Color.fromARGB(255, 78, 2182, 242),
      ),
    );
  }
}
