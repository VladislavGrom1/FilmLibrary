
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';

class WatchedFilms extends StatefulWidget{
  const WatchedFilms ({super.key});

  @override
  _FavourityState createState() => _FavourityState();
}

class _FavourityState extends State<WatchedFilms>{
  
  late String searchString = "";

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.mainBlueGray,
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70.v),
              Text("Просмотренные фильмы", style: theme.textTheme.headlineMedium),
              CustomImageView(
                svgPath: ImageConstant.pattern2,
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h, right: 10.h),
                child: Text(
                "Выполните синхронизацию со своими аккаунтами стриминговых сервисов, чтобы мы знали, какие фильмы вы уже смотрели", 
                style: CustomTextStyles.headlineSmallGray,
                textAlign: TextAlign.center,
                textScaler: TextScaler.linear(1.2),
                )
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Привязать аккаунт KinoPoisk",
                colorButton: appTheme.orange900,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WatchedFilms()))),
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Привязать аккаунт Okko",
                colorButton: appTheme.purpleButton,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WatchedFilms()))),
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Привязать аккаунт More.tv",
                colorButton: appTheme.gray600,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WatchedFilms()))),
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Привязать аккаунт Kion",
                colorButton: appTheme.darkRedButton,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WatchedFilms()))),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 10.h, right: 10.h),
                child: Text(
                "ИЛИ\n Выполните привязку аккаунтов позже", 
                style: CustomTextStyles.headlineSmallGray,
                textAlign: TextAlign.center,
                textScaler: TextScaler.linear(1.2),
                )
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Пропустить",
                colorButton: appTheme.blueButton,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WatchedFilms()))),
              ),
              SizedBox(height: 20.v),
            ],
          ),
        )
 
      )
      );
  }
}