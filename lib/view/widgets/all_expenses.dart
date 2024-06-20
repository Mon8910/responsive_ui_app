import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/all_expenses_header.dart';
import 'package:project_app/view/widgets/all_expenses_item_list_view.dart';
import 'package:project_app/view/widgets/custom_backgroundcontainer.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(chhild:  Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView()
        ],
      ),);
  }
}




