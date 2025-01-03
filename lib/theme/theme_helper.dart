import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA70001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray600,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        // bodyMedium: TextStyle(
        //   color: appTheme.indigo900,
        //   fontSize: 15.fSize,
        //   fontFamily: 'Lateef',
        //   fontWeight: FontWeight.w400,
        // ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray90003,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 36.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        // labelLarge: TextStyle(
        //   color: appTheme.gray90002,
        //   fontSize: 12.fSize,
        //   fontFamily: 'Roboto',
        //   fontWeight: FontWeight.w500,
        // ),
        // labelMedium: TextStyle(
        //   color: appTheme.black90001,
        //   fontSize: 10.fSize,
        //   fontFamily: 'Lato',
        //   fontWeight: FontWeight.w500,
        // ),
        // labelSmall: TextStyle(
        //   color: colorScheme.onErrorContainer,
        //   fontSize: 9.fSize,
        //   fontFamily: 'Be Vietnam Pro',
        //   fontWeight: FontWeight.w700,
        // ),
        headlineLarge: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 30.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 25.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray90002,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray90002,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 11.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 9.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFADCCA3).withOpacity(0.7), tertiary: Color(0XFF19543E),
    primaryContainer: Color(0XFFFF0900),
    // primaryFixedDim: Color(0XFF19543E),
    secondaryContainer: Color(0XFFB2DAC2),
    errorContainer: Color(0XFF4285F4),
    onError: Color(0XFFC7C7CC),
    onErrorContainer: Color(0XFF090F47),
    onPrimary: Color(0XB20C2638),
    onPrimaryContainer: Color(0X51FFFFFF),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF0F1011);
  Color get black90001 => Color(0XFF000000);
// Blue
  Color get blue50 => Color(0XFFDF3FF);
  Color get blue500 => Color(0XFF2197F3);
  Color get blue5001 => Color(0XFFE8EEDE);
  Color get blueA200 => Color(0XFF3E7DFF);
  Color get blueA400 => Color(0XFF2879FF);

//BlueAC
  Color get blueA2001c => Color(0X1C5A90FC);

// BlueGray
  Color get blueGray90005 => Color(0XFF2B2B2B);
  Color get blueGray40001 => Color(0XFF8B8B8D);
  Color get blueGray40002 => Color(0XFF868889);
  Color get blueGray700 => Color(0XFF465C67);
  Color get blueGray400 => Color(0XFF85939B);
  Color get blueGray300 => Color(0XFF7AB09F);
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray200 => Color(0XFFACB5BB);
  Color get blueGray800 => Color(0XFF263257);
  Color get blueGray50 => Color(0XFF465C67);
  Color get blueGray900 => Color(0XFF2E3036);
  Color get blueGray90002 => Color(0XFF080E47);
  Color get blueGray90003 => Color(0XFF32333E);
  Color get blueGray90001 => Color(0XFF1C3146);
  Color get blueGray90004 => Color(0XFF283544);
// DeepOrange
  Color get deepOrange50 => Color(0XFFFFEBE5);
  Color get deepOrangeA200 => Color(0XFFFF793A);
  Color get deepOrange400 => Color(0XFFF37748);
  Color get deepOrange40001 => Color(0XFFFF6A45);
  Color get deepOrange700 => Color(0XFFD6562B);
  Color get deepOrangeA100 => Color(0XFFF3AC71);

// DeepPurple
  Color get deepPurple50 => Color(0XFFEEE6FF);
  Color get deepPurpleD7 => Color.fromARGB(255, 38, 0, 255);
// Gray
  Color get gray100 => Color(0XFFF2F3F4);
  Color get gray10001 => Color(0XFFECFFF4);
  Color get gray10002 => Color(0XFFF4F549);
  Color get gray200 => Color(0XFFE7E7E7);
  Color get gray20001 => Color(0XFFEAEAEA);
  Color get gray20002 => Color(0XFFEFEDE9);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30002 => Color(0XFFDCDCE2);
  Color get gray30003 => Color(0XFFDBDBDB);
  Color get gray30004 => Color(0XFFE3E3E3);
  Color get gray400 => Color(0XFFC8C8C8);
  Color get gray40014 => Color(0X14CACACA);
  Color get gray40001 => Color(0XFFC7C7CC);
  Color get gray50 => Color(0XFFF7F8FD);
  Color get gray500 => Color(0XFF8F9098);
  Color get gray50001 => Color(0XFF999999);
  Color get gray50002 => Color(0XFF8F9098);
  Color get gray50003 => Color(0XFF929292);
  Color get gray50004 => Color(0XFF9DA1A5);
  Color get gray5001 => Color(0XFFF7F8F8);
  Color get gray5002 => Color(0XFFF4F4FF);
  Color get gray5003 => Color(0XFFFCFCFC);
  Color get gray5004 => Color(0XFFF7F8FD);
  Color get gray600 => Color(0XFF858585);
  Color get gray60001 => Color(0XFF828282);
  Color get gray60002 => Color(0XFF7F7F89);
  Color get gray60003 => Color(0XFF848484);
  Color get gray60004 => Color(0XFF6C7278);
  Color get gray700 => Color(0XFF666666);
  Color get gray800 => Color(0XFF49454F);
  Color get gray900 => Color(0XFF240046);
  Color get gray90001 => Color(0XFF161531);
  Color get gray90002 => Color(0XFF222A25);
  Color get gray90004 => Color(0XFF1F2024);
  Color get gray90003 => Color(0XFF1D1B20);
  Color get gray90005 => Color(0XFF151921);
  Color get gray90006 => Color(0XFF27272A);
  Color get gray900A5 => Color(0XA5070B2E);

// Grayb
  Color get gray4002b => Color(0X2BBCBDBF);
// Grayd
  Color get gray3003D => Color(0X3DE4E5E7);
  Color get gray1006d => Color(0X6DF5F5F5);
// Grayf
  Color get gray9000f => Color(0X0F101828);
// GrayCc
  Color get gray900Cc => Color(0XCC161A20);
// Green
  Color get green100 => Color(0XFFC7F4C2);
  Color get green600 => Color(0XFF34A853);
  Color get greenA100 => Color(0XFF9DEAC0);
  Color get greenA200 => Color(0XFF8EF4BC);
  Color get green200 => Color(0XFFA8D5BA);
  Color get green20001 =>
      Color(0X6DADCCA3).withOpacity(0.16); //rgba(173, 204, 163, 1.0)

  Color get green210001 => Color(0XFFD8D2B8);

// Indigo
  Color get indigo300 => Color(0XFF7892BF);
  Color get indigo30001 => Color(0XFF7D8BB7);
  Color get indigo400 => Color(0XFF4A60DD);
  Color get indigo50 => Color(0XFFDDE6F6);
  Color get indigo500 => Color(0XFF46639D);
  Color get indigo800 => Color(0XFF233F78);
  Color get indigo900 => Color(0XFF302A69);

// LightBlue
  Color get lightBlue300 => Color(0XFF4DB7FF);
// Orange
  Color get orange200 => Color(0XFFFFC06F);
// Pink
  Color get pinkA100 => Color(0XFFFF83A0);
// Red
  Color get red500 => Color(0XFFF04438);
  Color get red50001 => Color(0XFFEB4335);
//ReadCc
  Color get red300Cc => Color(0XFFDC7272);
  Color get red900Cc => Color(0XFFA90F22);

// Teal
  Color get teal50 => Color(0XFFCEFFE4);
  Color get teal500 => Color(0XFF0BAB7C);
  Color get teal900 => Color(0XFF19543E);
  Color get teal400 => Color(0XFF19E5A5);
  Color get teal700 => Color(0XFF15BD92);
// White
  Color get whiteA700 => Color(0XFFFDFCFD);
  Color get whiteA70001 => Color(0XFFFFFFFF);

  get gray30001 => null;
}
