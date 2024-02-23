import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:response_dashboard/widgets/Custom_Drawer.dart';
import 'package:response_dashboard/widgets/DashboardBody.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> keyS = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyS,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xfffafafa),
              leading: GestureDetector(
                onTap: () {
                  keyS.currentState!.openDrawer();
                },
                child: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xfff7f9fa),
      // السكافورلد واحده سواء في الويب او الموبايل او التاب ولكن الي هتشغير البادي بقا بناء علي انت ف اي بلاتفورم عشان تبقي ادابتف وطبعا هنحقق الريسبونسف ف كل الحالات
      body: const DashboardBody(),
    );
  }
}
