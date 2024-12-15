import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get OpenSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get beVietnamPro {
    return copyWith(
      fontFamily: 'Be Vietnam Pro',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get lateef {
    return copyWith(
      fontFamily: 'Lateef',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static TextStyle get bodyLarge18_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static TextStyle get bodyLargeLight => theme.textTheme.bodyLarge!
      .copyWith(fontSize: 18.fSize, fontWeight: FontWeight.w300);

  static TextStyle get bodyLargeGray20001 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray20001,
      );
  static TextStyle get bodyLargeGray60002 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray60002,
      );
  static TextStyle get bodyLargeLato =>
      theme.textTheme.bodyLarge!.lato.copyWith(
        fontSize: 18.fSize,
      );
  static TextStyle get bodyMediumBlack90001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black90001,
      );
  static TextStyle get bodyMediumInterBluegray9000315 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumInterBluegray9000315_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray90003,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumInterBlueGray90005 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray90005,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumInterGray50002 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray50002,
      );
  static TextStyle get bodyMediumInterBlueGray50004 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray50004,
      );
  static TextStyle get bodyMediumLateefIndigo900 =>
      theme.textTheme.bodyMedium!.lateef.copyWith(
        color: appTheme.indigo900,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumLatoBlueGray60002 =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: appTheme.gray60002,
        fontSize: 15.fSize,
      );

  static TextStyle get bodyMediumOnPrimary =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static TextStyle get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          fontWeight: FontWeight.w300);
  static TextStyle get bodyMediumOpenSansBlack90001 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumOpenSansGray500 =>
      theme.textTheme.bodyMedium!.OpenSans.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumOpenSansGray60003 =>
      theme.textTheme.bodyMedium!.OpenSans.copyWith(
        color: appTheme.gray60003,
        fontSize: 15.fSize,
      );
  static TextStyle get bodyMediumOpenSansGray60004 =>
      theme.textTheme.bodyMedium!.OpenSans.copyWith(
        color: appTheme.gray60004,
        fontSize: 15.fSize,
      );
  static TextStyle get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallBluegray90004 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90004,
      );
  static TextStyle get bodySmallBluegray90004_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray90004.withOpacity(0.95),
      );
  static TextStyle get bodySmallLateefBlack90001 =>
      theme.textTheme.bodySmall!.lateef.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallGray50002 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
        fontSize: 10.fSize,
      );

  static TextStyle get bodySmallGray60001 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static TextStyle get bodySmallLatoGray90003 =>
      theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.gray90003,
      );

  static get bodySmallLato => theme.textTheme.bodySmall!.lato;

  static TextStyle get bodySmallMontserratBlack90001 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallMontserratBlueGray40001 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 9.fSize,
      ); //bodySmallMontserratBlueGray40001
  static TextStyle get bodySmallPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static TextStyle get bodySmallRobotoPrimaryContainer =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static TextStyle get bodySmallOpenSansGray500 =>
      theme.textTheme.bodySmall!.OpenSans.copyWith(
        color: appTheme.gray500,
      );
  static TextStyle get bodySmallOpenSansGray50010 =>
      theme.textTheme.bodySmall!.OpenSans.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallOpenSansGray60001 =>
      theme.textTheme.bodySmall!.OpenSans.copyWith(
        color: appTheme.gray60001,
      );
  static TextStyle get bodySmallOpenSansGray90001 =>
      theme.textTheme.bodySmall!.OpenSans.copyWith(
        color: appTheme.gray90001,
      );

  static TextStyle get bodySmallPoppinsBlack90001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray90001,
      );
  static TextStyle get bodySmallPoppinsBluegray400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get bodySmallPoppinsBluegray400_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get bodySmallPoppinsBluegray400_2 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
      );

  static TextStyle get bodySmallPoppinsBluegray400_3 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get bodySmallPoppinsOnErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get bodySmallRed500 => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.primary, fontSize: 10.fSize);
// Headline Text style
  static TextStyle get headlineSmallGray90006 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90006,
      );

// Label text style
  static TextStyle get labelLargeInterGray400 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
      );
  static TextStyle get labelLargeBlueGray40002 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40002,
      );
  static TextStyle get labelLargeBlueGray400_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get labelLargeBlueGray400_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter;
  static TextStyle get labelLargeInterGray500 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray500,
      );
  static TextStyle get labelLargeInterGray90006 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray90006,
      );
  static TextStyle get labelLargeInterGray50001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray50001,
      );
  static TextStyle get labelLargeInterGray50004 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray50004,
      );
  static TextStyle get labelLargeInterOnErrorContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelLargeLatoOnErrorContainer =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeLatoOnPrimaryContainer =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w800,
      );
  static TextStyle get labelLargeLatoBluegray90004 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.blueGray90004,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeLatoWhiteA70001 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get labelLargeOpenSansGray50003 =>
      theme.textTheme.labelLarge!.OpenSans.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeOpenSansPrimary =>
      theme.textTheme.labelLarge!.OpenSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargePlusJakartaSans =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        fontWeight: FontWeight.w800,
      );
  static TextStyle get labelLargePlusJakartaSansGray60002 =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumBeVietnamProGray90003 =>
      theme.textTheme.labelMedium!.beVietnamPro.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumInterOnErrorContainer =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumSemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumWhiteA70001 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get labelSmallInterGray90003 =>
      theme.textTheme.labelSmall!.inter.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelMediumBluegray300 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 10.fSize,
      );
  static TextStyle get labelMediumBluegray30010 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 10.fSize,
      );
  static TextStyle get labelMediumBluegray30010_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 10.fSize,
      );
  static TextStyle get labelMediumBluegray40002 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static TextStyle get labelMediumInterInterGray90001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelMediumLatoBlack90001 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumLatoBlack9000110 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
      );
  static TextStyle get labelMediumLatoBlack90001Bold =>
      theme.textTheme.labelMedium!.lato.copyWith(
        color: appTheme.black90001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumLatoBlack90001_1 =>
      theme.textTheme.labelMedium!.lato.copyWith(
        color: appTheme.black90001,
      );
  static TextStyle get labelMediumLatoOnPrimaryContainer =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w800,
      );
  static TextStyle get labelMediumOpenSansPrimary =>
      theme.textTheme.labelLarge!.OpenSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelSmallBeVietnamProGray90001 =>
      theme.textTheme.labelSmall!.beVietnamPro.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelSmallInterGray90005 =>
      theme.textTheme.labelSmall!.inter.copyWith(
        color: appTheme.gray90005,
      );
//Open text style
  static TextStyle get openSansIndigo500 => TextStyle(
        color: appTheme.indigo500,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).OpenSans;
  static TextStyle get openSansOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).OpenSans;

//Poppins text style
  static TextStyle get poppinsBluegray800 => TextStyle(
        color: appTheme.blueGray800,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static TextStyle get poppinsgray5001 => TextStyle(
        color: appTheme.gray500,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static TextStyle get poppinsGray900a5 => TextStyle(
        color: appTheme.gray900A5,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static TextStyle get poppinsIndigo30001 => TextStyle(
        color: appTheme.indigo30001,
        fontSize: 2.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static TextStyle get poppinsIndigo3000Medium => TextStyle(
        color: appTheme.indigo30001,
        fontSize: 3.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;

// Title text style
  static TextStyle get titleLargeBluegray90003 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.OpenSans.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleLargeOpenSansBold =>
      theme.textTheme.titleLarge!.OpenSans.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleLargePoppinsBluegray90003 =>
      theme.textTheme.titleLarge!.OpenSans.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleLargeTeal900 => theme.textTheme.titleLarge!
    ..copyWith(
      fontSize: 22.fSize,
      fontWeight: FontWeight.w900,
    );
  static TextStyle get titleMediumPoppinsBlack90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumBlack90001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumBeVietnamProGray90003 =>
      theme.textTheme.titleMedium!.beVietnamPro.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumBluegray90002 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumBluegray90004 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90004,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumGray600 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumGray90005SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90005,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumLatoBlack900 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get titleMediumSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumTeal900 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal900,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallBluegray700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallBluegray90001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallBlack90001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallBluegray90003 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90003,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallBluegray90005 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray90005,
      );
  static TextStyle get titleSmallGray500 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallGray50003 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallGray50001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static TextStyle get titleSmallGray50004 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50004,
      );
  static TextStyle get titleSmallGray90001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallGray90005 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90005,
      );
  static TextStyle get titleSmallLatoIndigo900 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.indigo900,
        fontSize: 15.fSize,
      );
  static TextStyle get titleSmallLatoIndigo900Bold =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.indigo900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallGray90002 => theme.textTheme.titleSmall!
    ..copyWith(
      color: appTheme.gray90002,
      fontWeight: FontWeight.w500,
    );
}
