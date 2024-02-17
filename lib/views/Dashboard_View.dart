import 'package:flutter/material.dart';
import 'package:response_dashboard/widgets/DashboardBody.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: DashboardBody(),
    );
  }
}
