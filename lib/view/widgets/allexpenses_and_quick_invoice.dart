import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/all_expenses.dart';
import 'package:project_app/view/widgets/quick_invoice.dart';
class AllExpensesAndQuickVoice extends StatelessWidget{
  const AllExpensesAndQuickVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice()
            ],
          );
    
  }
  
}