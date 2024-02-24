import 'dart:math';

import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class CustomDropButton extends StatelessWidget {
  const CustomDropButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xfff1f1f1), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppSytles.styleMeduim16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -pi / 2,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
            ),
          )
        ],
      ),
    );
  }
}
