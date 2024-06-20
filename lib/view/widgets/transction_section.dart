import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/custom_backgroundcontainer.dart';
import 'package:project_app/view/widgets/my_card_section.dart';
import 'package:project_app/view/widgets/transcation_history.dart';
import 'package:project_app/view/widgets/transction_history_listview.dart';

class TransctionSection extends StatelessWidget {
  const TransctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        chhild: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('My card',style: AppStyle.styleSemiBold20,),
        // SizedBox(height: 20,),
        MyCardSection(),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: Color(0xFFF1F1F1),
        ),
        SizedBox(
          height: 20,
        ),

        TransactionHistoryHeaders(),
        SizedBox(
          height: 20,
        ),
        TransctionHistoryListview()
      ],
    ));
  }
}
