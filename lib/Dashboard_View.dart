import 'package:flutter/material.dart';
import 'package:response_dashboard/DashboardBody.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashboardBody(),
    );
  }
}
