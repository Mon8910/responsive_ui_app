import 'package:flutter/material.dart';
import 'package:project_app/utilies/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: title,
          hintStyle: AppStyle.styleRegular16(context)
              .copyWith(color: const Color.fromARGB(255, 170, 170, 170)),
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: outlineBorder(),
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder()),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFFAFAFA)));
  }
}
