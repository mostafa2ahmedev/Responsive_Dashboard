import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:response_dashboard/models/User_Info_Model.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

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
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: AppSytles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppSytles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
