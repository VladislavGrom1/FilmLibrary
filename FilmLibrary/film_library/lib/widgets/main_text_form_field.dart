import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget{
  
  const MainTextFormField({super.key, this.hintText, this.onChanged, this.width, this.height, this.maxLines});

  final String? hintText;

  final Function(String)? onChanged;

  final double? width;

  final double? height;

  final int? maxLines;

  @override
  Widget build(BuildContext context){
    return CustomTextFormField(
      hintText: hintText ?? "",
      maxLines: maxLines ?? 1,
      onChanged: onChanged,
      width: width ?? 350.h,
      height: height ?? 55.v,
    );
  }
}