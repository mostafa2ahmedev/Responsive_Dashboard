import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppSytles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
              color: Color(0xfffafafa), shape: OvalBorder()),
          child: const Icon(
            Icons.add,
            color: Color(0xff4e87f2),
          ),
        )
      ],
    );
  }
}
