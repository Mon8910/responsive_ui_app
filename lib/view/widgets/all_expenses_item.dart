import 'package:flutter/material.dart';
import 'package:project_app/models/all_expenses_item_model.dart';
import 'package:project_app/view/widgets/noactive_active_allexpenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel, required this.isActive,
  });
  final AllExpensesItemModel allExpensesItemModel; 
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel):
    NoActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
    ;
  }
}

