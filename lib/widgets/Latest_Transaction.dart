import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';
import 'package:response_dashboard/widgets/Latest_Transaction_list_view.dart';

class LatestTransaciton extends StatelessWidget {
  const LatestTransaciton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Latest Transaciton',
          style: AppSytles.styleMeduim16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransacitonListView()
      ],
    );
  }
}
