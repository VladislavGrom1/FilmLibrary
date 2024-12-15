import 'package:film_library/presentations/services.dart';
import 'package:film_library/presentations/favourite_films.dart';
import 'package:film_library/presentations/library.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/bottom_bar.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Services extends StatefulWidget {
  Services({super.key});

  @override
  _ServicesState createState() => _ServicesState();

  
}

class _ServicesState extends State<Services> {
  
  @override
  Widget build(BuildContext context) {
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
                functionOnClick: () => (),
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Привязать аккаунт Okko",
                colorButton: appTheme.purpleButton,
                functionOnClick: () => (),
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Привязать аккаунт More.tv",
                colorButton: appTheme.gray600,
                functionOnClick: () => (),
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Привязать аккаунт Kion",
                colorButton: appTheme.darkRedButton,
                functionOnClick: () => (),
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
                text: "Далее",
                colorButton: appTheme.blueButton,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FavouriteFilms()))),
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.bottomCenter,
                child: () {setState(() { MainBottomBar(); });} (), 
              )
            ],
          ),
        )
        
 
      )
      );
  }
}