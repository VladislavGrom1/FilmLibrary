import 'dart:developer';

import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/library.dart';
import 'package:film_library/utils/constants/globals.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/bottom_bar.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';

import '../widgets/main_text_button.dart';

class Registration extends StatefulWidget{
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String inputName = "";
  String inputEmail = "";
  String inputPassword1 = "";
  String inputPassword2 = "";

  @override
  Widget build(BuildContext context){
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.mainBlueGray,
          body: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.arrowBack,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20.h),
                onTap: () => Navigator.pop(context),
              ),
              SizedBox(height: 20.v),
              Text("Регистрация", style: theme.textTheme.headlineMedium),
              CustomImageView(
                svgPath: ImageConstant.pattern1,
              ),
              SizedBox(height: 60.v),
              MainTextFormField(
                hintText: "Ваше имя",
                onChanged: (value) {setState(() {
                  inputName = value;
                });
                },
              ),
              SizedBox(height: 30.v),
              MainTextFormField(
                hintText: "Email",
                onChanged: (value) {setState(() {
                  inputEmail = value;
                });
                },
              ),
              SizedBox(height: 30.v),
              MainTextFormField(
                hintText: "Пароль",
                onChanged: (value) {setState(() {
                  inputPassword1 = value;
                });
                },
              ),
              SizedBox(height: 30.v),
              MainTextFormField(
                hintText: "Повторите пароль",
                onChanged: (value) {setState(() {
                  inputPassword2 = value;
                });
                },
              ),
              SizedBox(height: 40.v),
              MainTextButton(
                text: "Зарегистрироваться",
                colorButton: appTheme.blueButton,
                functionOnClick: () {
                  setState(() {
                    if(inputPassword1 == inputPassword2){
                    Globals.regUser(inputName, inputEmail, inputPassword1, true);
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MainBottomBar()));
                  }
                    
                  });
                  
                }
              ),
            ],
            // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Library(filmAnnotations: annotations)))
          )
        ),
    );
  }
}