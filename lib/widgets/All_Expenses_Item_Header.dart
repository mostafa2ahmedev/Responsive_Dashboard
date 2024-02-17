import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isSelected});
  final String image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: isSelected == true
                ? Colors.white.withOpacity(0.1)
                : Colors.white,
            shape: const OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                isSelected == true ? Colors.white : const Color(0xff4e87f2),
                BlendMode.srcIn),
          )), // الsvg ف الاغلب بتطلع بالديفولت سايز بتاعها الي موجود ف الديزاين اساسا ف لما تحطها جوا سنتر هتتظبط
          // ولكن هي كانت زادت ف الحجم عشان تملي الهيات والويدث بتاع الكونتينر  عشان دي كونسترينت متطبقه عليها لكن ف الاغلب الصور السفج بتلع بنفس السايز الي ع الديزاين
        ),
        const Spacer(),
        // مينفعش استخدم السبيسر جوا رو ملهوش ويدث محدد
        Transform.rotate(
          angle: -pi,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: isSelected == true ? Colors.white : const Color(0xff064061),
          ),
        )
      ],
    );
  }
}
