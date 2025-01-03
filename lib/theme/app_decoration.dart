import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray30004,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGrayB => BoxDecoration(
        color: appTheme.gray4002b,
      );

  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green100,
      );

  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo800,
      );
  static BoxDecoration get fillIndigo500 => BoxDecoration(
        color: appTheme.indigo500,
      );

  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
      );

  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 0),
          ),
        ],
      );

  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.13),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(12.63, 11.79),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );

  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.3),
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.3),
        border: Border.all(
            color: theme.colorScheme.primaryContainer,
            width: 3.h,
            strokeAlign: BorderSide.strokeAlignCenter),
      );

  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20002,
          width: 0.91.h,
        ),
      );

  static BoxDecoration get outlineGray30002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray30002,
          width: 1.h,
        ),
      );

  static BoxDecoration get outlineGray300021 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray30002,
          width: 1.h,
        ),
      );

  static BoxDecoration get outlineGray300031 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border(
          top: BorderSide(
            color: appTheme.gray30003,
            width: 1.h,
          ),
        ),
      );

  static BoxDecoration get outlineGray5001 => BoxDecoration(
        color: appTheme.blue5001,
        border: Border.all(
          color: appTheme.gray5001,
          width: 0.91.h,
        ),
      );
}

class BorderRadiusStyle {
  //Custom borders
  static BorderRadius get customBorderBL16 => BorderRadius.vertical(
        bottom: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        bottom: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}
