import 'package:flutter/material.dart';
import 'package:response_dashboard/models/Drawer_Item_Mode.dart';
import 'package:response_dashboard/models/User_Info_Model.dart';
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
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    image: Assets.imagesAvatar3,
                    title: "Lekan Okeowo",
                    subtitle: "ali_fayyad@gmail.com")),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody:
                false, // دي بقول للبادي بتاعه متسكرولش لوحدك  لان انت هتبقي جزء من السكرول فيو وتسكرول معاهم
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height:
                        20, // هوا جوا اكسباندد ف معناها مينفعش يقل عن كدا ولكن طبعا هيزيد
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSettings, name: 'Settings system'),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout, name: 'Logout account'),
                ),
                SizedBox(
                  height: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
