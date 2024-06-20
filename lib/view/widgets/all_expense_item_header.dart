import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.backgroung,
    this.imageColor,
  });
  final String image;
  final Color? backgroung, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints:const BoxConstraints(
              maxWidth: 60,

            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: backgroung ?? Colors.white,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        )
      ],
    );
  }
}