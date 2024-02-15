import 'package:flutter/material.dart';
import 'package:response_dashboard/models/Drawer_Item_Mode.dart';
import 'package:response_dashboard/widgets/Active_and_Inactive_Drawer.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
