import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/custom_dot_indector.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.cuurentIndex});
  final int cuurentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding: const EdgeInsets.symmetric(horizontal:  3),
          child:  CustomDotIndector(isActive: index==cuurentIndex),
        ),
      ),
    );
  }
}
