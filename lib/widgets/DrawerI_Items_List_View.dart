import 'package:flutter/material.dart';
import 'package:response_dashboard/models/Drawer_Item_Mode.dart';
import 'package:response_dashboard/utils/App_Images.dart';
import 'package:response_dashboard/widgets/Drawer_Item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  static const List<DrawerItemModel> drawerItems = [
    // حطيت كونست عند الكونستراكتور عشان اقدر احط كونست هنا عشان يتبنو اثناء الكومابيل تايم
    // وكونت يعني تتنشا مره واحده بس وبعد كدا استدعيها  وبما انها هتتنشا مره واحده بس ف لازم تكون ستاتيك عشان تبقي خاصه بالكلاس مش كل
    // ما استدعي اوبجكت من الكلاس دا ينشاها تاني
    DrawerItemModel(image: Assets.imagesDashboard, name: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyInvestments, name: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, name: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, name: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, name: 'My Investments')
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(() {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;

                  print(selectedIndex);
                });
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: DrawerItem(
              isActive: selectedIndex == index,
              drawerItemModel: drawerItems[index],
            ),
          ),
        );
      },
    );
  }
}
