import 'package:flutter/material.dart';

class CustomDotIndector extends StatelessWidget {
  const CustomDotIndector({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      duration: const Duration(microseconds: 300),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: isActive
            ? const Color.fromARGB(255, 78, 183, 242)
            : const Color.fromARGB(255, 232, 232, 232),
      ),
    );
  }
}
