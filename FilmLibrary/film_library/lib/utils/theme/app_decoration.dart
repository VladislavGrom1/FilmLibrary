import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:flutter/material.dart';


class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue200,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray40001,
      );
  static BoxDecoration get fillGray60001 => BoxDecoration(
        color: appTheme.gray60001,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA400,
      );

  // Для Shop
  static BoxDecoration get fillBlueForPDF => BoxDecoration(
        color: appTheme.blueFillPlayIcon,
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberAToOnError => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, -0.28),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.amberA20001,
            theme.colorScheme.onError,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.whiteA700,
            appTheme.gray40001,
          ],
        ),
      );

  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.blue700.withOpacity(0.31),
            appTheme.blue700.withOpacity(0.31),
          ],
        ),
      );

  //Для Profile
  static BoxDecoration get gradientGrayFToGrayF => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.gray6004f,
            appTheme.gray6004f,
          ],
        ),
      );

  //Для Profile
  static BoxDecoration get gradientBlueToLightBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 3),
          colors: [
            appTheme.blueBorder,
            appTheme.blueFillPlayIcon,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => const BoxDecoration();
  static BoxDecoration get outline1 => const BoxDecoration();
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.blue700,
        border: Border.all(
          color: appTheme.blue800,
          width: 2.h,
        ),
      );

  //Для Profile
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.gray600,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 2.h,
        ),
      );

  //Для Profile
  static BoxDecoration get outlineOnPrimaryContainerBlue => BoxDecoration(
        color: appTheme.blueFillPlayIcon,
        border: Border.all(
          color: appTheme.blueFillPlayIcon,
          width: 2.h,
        ),
      );

  // Для Setting Profile
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueButton,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.blueButton,
            width: 1.h,
          ),
        ),
      );

  // Для Theory (Drill 1)
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.5),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.h,
      );

  //Для Profile
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );

  // Для Shop и Profile
  static BorderRadius get circleBorder14 => BorderRadius.circular(
        14.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder39 => BorderRadius.circular(
        39.h,
      );

  //Для Profile
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );

  //Для Profile
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;


