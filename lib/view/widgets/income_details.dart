
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_app/models/income_model.dart';
import 'package:project_app/utilies/app_style.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeModel(
        color: Color(0xFF208CC8), title: 'Design service', trailing: '40%'),
    IncomeModel(
        color: Color(0xFF4EB7F2), title: 'Design product', trailing: '25%'),
    IncomeModel(
        color: Color(0xFF064061), title: 'Product royalti', trailing: '20%'),
    IncomeModel(color: Color(0xFFE2DECD), title: 'Other', trailing: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: items
          .map(
            (e) => IncomeItemDetails(incomeModel: e),
          )
          .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return ItemDetails(incomeModel: items[index]);
    //     });
  }
}

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
