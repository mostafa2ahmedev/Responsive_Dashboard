import 'package:flutter/material.dart';
import 'package:response_dashboard/widgets/Custom_Dots.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDotIndator(
            isActive: currentPage == index,
          ),
        ),
      ),
    );
  }
}
