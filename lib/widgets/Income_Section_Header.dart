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
        const Text(
          'Income',
          style: AppSytles.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Text(
                'Monthly',
                style: AppSytles.styleMeduim16,
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
