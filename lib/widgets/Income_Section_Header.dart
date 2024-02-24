import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppSytles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppSytles.styleMeduim16(context),
              ),
              const SizedBox(
                width: 16,
              ),
              Transform.rotate(
                  angle: -1.5, child: const Icon(Icons.arrow_back_ios_new)),
            ],
          ),
        ),
      ],
    );
  }
}
