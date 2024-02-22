import 'package:flutter/material.dart';
import 'package:response_dashboard/models/User_Info_Model.dart';
import 'package:response_dashboard/utils/App_Images.dart';
import 'package:response_dashboard/widgets/User_info_list_tile.dart';

class LatestTransacitonListView extends StatelessWidget {
  const LatestTransacitonListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madrani@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madrani@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madrani@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          items.length,
          (index) => IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: items[index],
            ),
          ),
        ),
      ),
    );
  }
}



//  return SizedBox(
//       height: 80,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return IntrinsicWidth(
//             child: UserInfoListTile(
//               userInfoModel: items[index],
//             ),
//           );
//         },
//       ),
//     );