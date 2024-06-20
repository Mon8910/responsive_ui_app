import 'package:flutter/material.dart';
import 'package:project_app/models/transction_model.dart';
import 'package:project_app/utilies/app_style.dart';

class TransctionHistoryItem extends StatelessWidget {
  const TransctionHistoryItem({
    super.key,
    required this.transctionModel,
  });
  final TransctionModel transctionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      elevation: 0,
      child: ListTile(
        title: Text(
          transctionModel.title,
          style: AppStyle.styleSemiBold16(context),
        ),
        subtitle: Text(
          transctionModel.subtitle,
          style: AppStyle.styleRegular16(context),
        ),
        trailing: Text(
          transctionModel.amount,
          style: AppStyle.styleSemiBold20(context).copyWith(
              color: transctionModel.withdraw
                  ? const Color(0xFFF3735E)
                  :const Color(0xFF7DD97B)),
        ),
      ),
    );
  }
}
