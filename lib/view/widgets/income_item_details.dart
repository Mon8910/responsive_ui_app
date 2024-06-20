import 'package:flutter/material.dart';
import 'package:project_app/models/income_model.dart';
import 'package:project_app/utilies/app_style.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.incomeModel});
  final IncomeModel incomeModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 12,
        width: 12,
        decoration:
            ShapeDecoration(shape: OvalBorder(), color: incomeModel.color),
      ),
      title: Text(
        incomeModel.title,
        style: AppStyle.styleRegular16(context),
      ),
      trailing: Text(
        incomeModel.trailing,
        style: AppStyle.styleMedium16(context),
      ),
    );
  }
}
