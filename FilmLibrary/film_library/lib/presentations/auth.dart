import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/library.dart';
import 'package:film_library/presentations/registration.dart';
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

class Auth extends StatefulWidget{
  const Auth({super.key});

  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth>{

  String inputEmail = "";
  String inputPassword = "";

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
              SizedBox(height: 70.v),
              Text("Вход", style: theme.textTheme.headlineMedium),
              CustomImageView(
                svgPath: ImageConstant.pattern1,
              ),
              SizedBox(height: 60.v),
              MainTextFormField(
                hintText: "Email",
                onChanged: (value) {setState(() {
                  inputEmail = value;
                });
                }
              ),
              SizedBox(height: 30.v),
              MainTextFormField(
                hintText: "Пароль",
                onChanged: (value) {setState(() {
                  inputPassword = value;
                });
                },
              ),
              SizedBox(height: 40.v),
              MainTextButton(
                text: "Войти",
                colorButton: appTheme.blueButton,
                functionOnClick: () => {
                  for(var i in Globals.usersData)
                  {
                    if(i.email == inputEmail && i.password == inputPassword){
                      Globals.logUser(inputEmail),
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MainBottomBar())),
                    }
                    else
                    {
                        // Уведомление о неверных данных
                    }                 
                  },
                },
              ),
              const Spacer(),
              Text(
                "У вас нет аккаунта?", 
                style: CustomTextStyles.headlineSmallGray,
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Создать аккаунт",
                colorButton: appTheme.blueButton,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Registration())))
              ),
              SizedBox(height: 40.v),
            ],
          )
        ),
    );
  }

}


  
