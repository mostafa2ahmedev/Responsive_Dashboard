import 'package:flutter/material.dart';
import 'package:response_dashboard/models/Drawer_Item_Mode.dart';
import 'package:response_dashboard/utils/App_Images.dart';
import 'package:response_dashboard/widgets/Active_and_Inactive_Drawer.dart';
import 'package:response_dashboard/widgets/DrawerI_Items_List_View.dart';
import 'package:response_dashboard/widgets/User_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
              image: Assets.imagesAvatar1,
              title: "Lekan Okeowo",
              subTitle: "ali_fayyad@gmail.com"),
          SizedBox(height: 8),
          DrawerItemListView(),
          Expanded(child: SizedBox()),
          InActiveDrawerItem(
              drawerItemModel: DrawerItemModel(
                  image: Assets.imagesSettings, name: 'Settings system')),
          InActiveDrawerItem(
              drawerItemModel: DrawerItemModel(
                  image: Assets.imagesLogout, name: 'Logout account')),
          SizedBox(
            height: 28,
          ),
        ],
      ),
    );
  }
}
