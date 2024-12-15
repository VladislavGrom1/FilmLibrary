import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/library.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';

import '../widgets/main_text_button.dart';

class Registration extends StatelessWidget{
  const Registration({super.key});

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
              const MainTextFormField(
                hintText: "Ваше имя",
              ),
              SizedBox(height: 30.v),
              const MainTextFormField(
                hintText: "Email",
              ),
              SizedBox(height: 30.v),
              const MainTextFormField(
                hintText: "Пароль",
              ),
              SizedBox(height: 30.v),
              const MainTextFormField(
                hintText: "Повторите пароль",
              ),
              SizedBox(height: 40.v),
              MainTextButton(
                text: "Зарегистрироваться",
                colorButton: appTheme.blueButton,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Library(filmAnnotations: annotations))))
              ),
            ],
          )
        ),
    );
  }
}