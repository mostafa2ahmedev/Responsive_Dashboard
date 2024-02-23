import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:response_dashboard/widgets/AllExpensesAndQuickInvoice.dart';
import 'package:response_dashboard/widgets/Custom_Drawer.dart';
import 'package:response_dashboard/widgets/Income_Section.dart';
import 'package:response_dashboard/widgets/Mobile_Dashboard.dart';
import 'package:response_dashboard/widgets/My_Card_And_Transaction_History.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: MobileDashboard(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
