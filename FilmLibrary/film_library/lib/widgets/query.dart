import 'package:film_library/presentations/recommended_film2.dart';
import 'package:film_library/utils/constants/globals.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/custom_elevated_button.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/custom_text_form_field.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Query extends StatefulWidget {

  Query({
    super.key,
    required this.headText,
    required this.inputHintText,
  });

  final String headText;
  final String inputHintText;

  @override
  _QueryState createState() => _QueryState();

}

class _QueryState extends State<Query>{
  
  String inputText = "";

  @override
  Widget build(final BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: 20.h, right: 20.h, top: 200.v, bottom: 290.v),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        child: Material(
          color: appTheme.mainBlueGray,
          child: Form(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 30.v),
                  Text(
                    widget.headText,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 50.v),

                  //Поле ввода имени
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: MainTextFormField(
                      hintText: widget.inputHintText,
                      onChanged: (value) {}
                  ),
                  ),
                  SizedBox(height: 50.v),

                  //Кнопка "Готово"
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: MainTextButton(
                      colorButton: appTheme.blueButton,
                      text: "Отправить запрос",
                      functionOnClick: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RecomFilm2()));},
                      )
                  ),
                  SizedBox(height: 20.v),
                  
                  //Кнопка "Отмена"
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: MainTextButton(
                      colorButton: appTheme.blueButton,
                      text: "Отмена",
                      functionOnClick: () => (Navigator.pop(context)),
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}