import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

class SectionSetting extends StatelessWidget {
  const SectionSetting({
    super.key,
    this.textSetting,
    required this.leftIconPath,
    required this.rightIconPath,
    this.decoration,
  });

  /// Левая иконка
  final String? leftIconPath;

  /// Правая иконка
  final String rightIconPath;

  /// Текст секции
  final Text? textSetting;

  /// Декорация
  final BoxDecoration? decoration;

  @override
  Widget build(final BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
      decoration: decoration,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: leftIconPath,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: textSetting ?? Text("")
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomImageView(
              svgPath: rightIconPath,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ],
      ),
    );
  }
}
