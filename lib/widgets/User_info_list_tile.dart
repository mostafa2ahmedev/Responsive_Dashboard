import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppSytles.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppSytles.styleRegular12,
        ),
      ),
    );
  }
}
