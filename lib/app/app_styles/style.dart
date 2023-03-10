import 'package:flutter/cupertino.dart';

class AppStyles {
  static stStyle(
    double? size,
    FontWeight? fontW,
    Color ?color,
  ) {
    return TextStyle(
      fontSize: size,
      fontWeight: fontW,
      color: color,
    );
  }
  static extraBottom(
    {
      double? size,
    FontWeight? fontW,
    Color? color,
    }
  ) {
    return stStyle(
      size ?? 12,
      fontW ?? FontWeight.w400,
      color ?? Color(0xB3B3B3),
    );
  }

  static extraBold(
    {
      double? size,
    FontWeight? fontW,
    Color? color,
    }
  ) {
    return stStyle(
      size ?? 14,
      fontW ?? FontWeight.w600,
      color ??const Color(0xff14191F),
    );
  }
   static extraBold1(
    {
      double? size,
    FontWeight? fontW,
    Color? color,
    }
  ) {
    return stStyle(
      size ?? 13,
      fontW ?? FontWeight.w400,
      color ?? const Color(0xff14191F),
    );
  }
   static extraBold2(
    {
      double? size,
    FontWeight? fontW,
    Color? color,
    }
  ) {
    return stStyle(
      size ?? 13,
      fontW ?? FontWeight.w600,
      color ??const Color(0xff1754F2),
    );
  }
  static extraNum(
    {
      double? size,
    FontWeight? fontW,
    Color? color,
    }
  ) {
    return stStyle(
      size ?? 16,
      fontW ?? FontWeight.w600,
      color ??const Color(0xffF23C3C),
    );
  }
   static extraFollow(
    {
      double? size,
    FontWeight? fontW,
    Color? color,
    }
  ) {
    return stStyle(
      size ?? 11,
      fontW ?? FontWeight.w600,
      color ??
      
      
       Color(0xFFFFFF),
    );
  }
  static chatSearch(
    {
      double? size,
    FontWeight? fontW,
    Color? color,
    }
  ) {
    return stStyle(
      size ?? 16,
      fontW ?? FontWeight.w400,
      color ?? Color(0xB3B3B3),
    );
  }
}

