import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get headlineSmallGray => theme.textTheme.headlineLarge!.copyWith(
    color: appTheme.grayButton,
  );
  static get startHeadlineLargeBlack => theme.textTheme.headlineMedium!.copyWith(
    fontSize: 48,
    fontStyle: FontStyle.italic,
  );
  static get profileHeadlineMediumBlack => theme.textTheme.headlineMedium!.copyWith(
    fontSize: 20,
  );
  static get headlineSmallBlack => theme.textTheme.headlineLarge!.copyWith(
    color: appTheme.black900,
  );

  static get headlineSmallBlack2 => theme.textTheme.headlineLarge!.copyWith(
    color: appTheme.black900,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get mochiyPopOne {
    return copyWith(
      fontFamily: 'Mochiy Pop One',
    );
  }
}
