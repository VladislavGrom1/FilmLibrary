import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget{
  
  const MainTextFormField({super.key, this.hintText, this.onChanged, this.width});

  final String? hintText;

  final Function(String)? onChanged;

  final double? width;

  @override
  Widget build(BuildContext context){
    return CustomTextFormField(
      hintText: hintText ?? "",
      onChanged: onChanged,
      width: width ?? 350.h,
    );
  }
}