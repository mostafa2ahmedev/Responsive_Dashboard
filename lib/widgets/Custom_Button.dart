import 'dart:html';

import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/App_Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgroundColor, this.textColor, required this.text});
  final Color? backgroundColor, textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          62, //  اديته فيكسد  والبوتون من الحاجات اي الاحسن متديهاش ريسبونسف هايت  عشان شكلها ميبقاش رخم   ف اديها فكسد
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xff4db7f2),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppSytles.styleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
