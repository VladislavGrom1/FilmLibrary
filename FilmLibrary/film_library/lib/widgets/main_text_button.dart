import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class MainTextButton extends StatelessWidget{

  const MainTextButton({super.key, this.text, this.colorButton, this.functionOnClick});

  final String? text;

  final void Function()? functionOnClick;

  final Color? colorButton;

  @override
  Widget build(final BuildContext context){
    return CustomElevatedButton(
      width: 350.h,
      alignment: Alignment.center,
      onTap: functionOnClick,
      text: text ?? "",
      buttonStyle: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          )
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          colorButton ?? Colors.black,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 5),
        )
        ],
      ),
      );
  }
}