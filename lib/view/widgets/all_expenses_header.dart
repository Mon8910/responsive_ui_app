import 'package:flutter/material.dart';
import 'package:project_app/utilies/app_style.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'All Expenses',
          style: AppStyle.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        Container(
          
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
               Text(
                'Monthly',
                style: AppStyle.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              Transform.rotate(
                  angle: -1.5708,
                  child: const Icon(Icons.arrow_back_ios_new_outlined))
            ],
          ),
        )
      ],
    );
  }
}
