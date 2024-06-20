import 'package:flutter/material.dart';
import 'package:project_app/utilies/app_style.dart';
import 'package:project_app/view/widgets/latest_transcation_listview.dart';

class LatestTranscationItem extends StatelessWidget {
  const LatestTranscationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleRegular16(context),
        ),
        const SizedBox(
          height: 10,
        ),
        const LatestTranscationListView()
      ],
    );
  }
}
