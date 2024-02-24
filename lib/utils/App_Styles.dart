import 'package:flutter/material.dart';
import 'package:response_dashboard/utils/ResFontSize.dart';

abstract class AppSytles {
  // بعد ما ضيفت الميديا كويري انا محتاج  كل مره استدعي الستايل  يديني الكونتكست عشان اترجر الميديا كويري ف يعمل ريبلد
  //ف انا ممكن انشا فانشكن هنا بدل ما هي اوبجكت كدا   ف هنشا فانكشن بترجع الستايل الي انا مهتم بيه

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  // static TextStyle styleRegular16 = TextStyle(
  //   color: const Color(0xff064060),
  //   fontSize: getResponsiveFontSize(fontSize: 16),
  //   fontFamily: 'Montserrat',
  //   fontWeight: FontWeight.w400,
  // );

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4E87F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMeduim16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMeduim20(BuildContext context) {
    return TextStyle(
      color: const Color(0xffffffff),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xffaaaaaa),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4E87F2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xffaaaaaa),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}
