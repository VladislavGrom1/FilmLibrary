import 'package:film_library/presentations/auth.dart';
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

class ChangePasswordDialog extends StatefulWidget {

  ChangePasswordDialog({
    super.key,
    required this.headText,
    required this.inputHintText,
  });

  final String headText;
  final String inputHintText;

  @override
  _ChangePasswordDialogState createState() => _ChangePasswordDialogState();

}

class _ChangePasswordDialogState extends State<ChangePasswordDialog>{
  
  String inputText1 = "";
  String inputText2 = "";

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
                      onChanged: (value) {
                        setState(() {
                          inputText1 = value;
                        });  
                  },
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: MainTextFormField(
                      hintText: "Повторите пароль",
                      onChanged: (value) {
                        setState(() {
                          inputText2 = value;
                        });  
                    },
                    ),
                  ),
                  SizedBox(height: 50.v),

                  //Кнопка "Готово"
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: MainTextButton(
                      colorButton: appTheme.blueButton,
                      text: "Подтвердить",
                      functionOnClick: () {
                        for(var i in Globals.usersData){
                          if(i.currentUser == true && inputText1 == inputText2){
                            setState(() {
                              i.password = inputText1;
                              i.currentUser = false;
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Auth()));
                            });
                          }
                          else{
                            /// Ошибка
                          }
                        }
                      },
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

  
