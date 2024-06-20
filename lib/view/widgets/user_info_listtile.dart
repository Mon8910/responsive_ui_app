import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_app/models/user_info_model.dart';
import 'package:project_app/utilies/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
     required this.userInfoModel,
  });
  
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: FittedBox(fit: BoxFit.scaleDown,alignment:   AlignmentDirectional.centerStart, child: Text(userInfoModel.title)),
          titleTextStyle: AppStyle.styleSemiBold16(context),
          subtitle: FittedBox(fit: BoxFit.scaleDown,alignment: AlignmentDirectional.centerStart,child: Text(userInfoModel.subtitle)),
          subtitleTextStyle: AppStyle.styleRegular12(context),
        ),
      ),
    );
  }
}
