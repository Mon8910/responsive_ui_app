import 'package:flutter/material.dart';
import 'package:project_app/utilies/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.background,
    required this.title,
    this.textColor,
  });
  final Color? background;
  final String title;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          
          elevation: 0,
          backgroundColor: background ??
              const Color.fromARGB(
                255,
                78,
                183,
                242,
              ),
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          
          
        ),
        child: Text(
          title,
          style: AppStyle.styleSemiBold18(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
