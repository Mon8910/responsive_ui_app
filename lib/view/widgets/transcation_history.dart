import 'package:flutter/material.dart';
import 'package:project_app/utilies/app_style.dart';

class TransactionHistoryHeaders extends StatelessWidget {
  const TransactionHistoryHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
              'Transaction History',
              style: AppStyle.styleSemiBold20(context),
            ),
            Text(
              'See all',
              style: AppStyle.styleRegular16(context)
                  .copyWith(color: const Color(0xFF4EB7F2)),
            )
          ],
        )
      ],
    );
  }
}
