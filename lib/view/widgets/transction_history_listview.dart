import 'package:flutter/material.dart';
import 'package:project_app/models/transction_model.dart';
import 'package:project_app/view/widgets/transction_history_item.dart';

class TransctionHistoryListview extends StatelessWidget {
  const TransctionHistoryListview({super.key});
  static const items = [
    TransctionModel(
        title: 'Cash Withdrawal',
        subtitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        withdraw: true),
    TransctionModel(
        title: 'Landing Page project',
        subtitle: '13 Apr, 2022 ',
        amount: r'$20,00',
        withdraw: false),
    TransctionModel(
        title: 'Juni Mobile App project',
        subtitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        withdraw: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
    children: items.map((e)=>
    TransctionHistoryItem(transctionModel: e,)
      
    ).toList(),
    );
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return TransctionHistoryItem(transctionModel: items[index]);
    //     });
  }
}
