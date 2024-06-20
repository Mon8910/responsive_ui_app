import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_app/utilies/app_image.dart';
import 'package:project_app/utilies/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground),
            ),
            color: const Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right:  30,
            bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 14),
                  title: Text(
                    'Name card',
                    style: AppStyle.styleRegular14(context).copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Syah Bandi',
                    style: AppStyle.styleMedium20(context).copyWith(color: Colors.white),
                  ),
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                ),
             const  Expanded(
                 child: SizedBox(
                    
                  ),
               ),
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyle.styleSemiBold20(context).copyWith(color: Colors.white),
                ),
                Text(
                  '12/20 - 124',
                  style: AppStyle.styleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
