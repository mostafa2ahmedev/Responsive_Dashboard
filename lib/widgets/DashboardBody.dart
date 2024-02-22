import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/widgets/Adaptive_Layout.dart';
import 'package:response_dashboard/widgets/1Desktop_Dashboard.dart';
import 'package:response_dashboard/widgets/Mobile_Dashboard.dart';
import 'package:response_dashboard/widgets/Tablet_Dasboard.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileDashboard: (context) => const MobileDashboard(),
      tabletDashboard: (context) => const TabletDashboard(),
      desktopDashboard: (context) => const DesktopDashboard(),
    );
  }
}
