import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/annotation.dart';
import 'package:film_library/presentations/film_annotation.dart';
import 'package:film_library/presentations/recommended_film.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';

class Advisor extends StatefulWidget{
  const Advisor ({super.key});

  @override
  _AdvisorState createState() => _AdvisorState();
}

class _AdvisorState extends State<Advisor>{
  
  String searchString = "";

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.mainBlueGray,
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.arrowBack,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20.h),
                onTap: () => Navigator.pop(context),
              ),
              Text("Советник", style: theme.textTheme.headlineMedium),
              CustomImageView(
                svgPath: ImageConstant.pattern2,
              ),
              SizedBox(height: 20.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  InkWell(
                    onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: annotations[2])))),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 169, 81, 210),
                          border: Border.all(color: Colors.black, width: 4.h)),
                      width: 200.h,
                      height: 150.v,
                      child: 
                        Align(alignment: Alignment.center,
                          child:Text("Фильмы", style: CustomTextStyles.advisorHeadlineSmallBlack))
                    ),
                  ),
                  InkWell(
                    onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: annotations[6])))),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 103, 210, 81),
                          border: Border.all(color: Colors.black, width: 4.h)),
                      width: 200.h,
                      height: 150.v,
                      child: 
                        Align(alignment: Alignment.center,
                          child:Text("Сериалы", style: CustomTextStyles.advisorHeadlineSmallBlack))
                    ),
                  ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  InkWell(
                    onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: annotations[5])))),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 249, 243, 77),
                          border: Border.all(color: Colors.black, width: 4.h)),
                      width: 200.h,
                      height: 150.v,
                      child: 
                        Align(alignment: Alignment.center,
                          child:Text("Зарубежное", style: CustomTextStyles.advisorHeadlineSmallBlack))
                    ),
                  ),
                  InkWell(
                    onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: annotations[1])))),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 216, 138, 60),
                          border: Border.all(color: Colors.black, width: 4.h)),
                      width: 200.h,
                      height: 150.v,
                      child: 
                        Align(alignment: Alignment.center,
                          child: Text("Высокий\n рейтинг", style: CustomTextStyles.advisorHeadlineSmallBlack))
                    ),
                  ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  InkWell(
                    onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: annotations[4])))),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 212, 64, 66),
                          border: Border.all(color: Colors.black, width: 4.h)),
                      width: 200.h,
                      height: 150.v,
                      child: 
                        Align(alignment: Alignment.center,
                          child:Text("Классика", style: CustomTextStyles.advisorHeadlineSmallBlack))
                    ),
                  ),
                  
                  InkWell(
                    onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: annotations[7])))),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 87, 158, 251),
                          border: Border.all(color: Colors.black, width: 4.h)),
                      width: 200.h,
                      height: 150.v,
                      child: 
                        Align(alignment: Alignment.center,
                          child: Text("2024 год", style: CustomTextStyles.advisorHeadlineSmallBlack))
                    ),
                  ),
                  ],
                )
              ],
              ),
              SizedBox(height: 20.v),
              MainTextFormField(
                hintText: "Введите запрос",
                onChanged: (value) {},
                width: 400.h,
                height: 150.v,
                maxLines: 10,
              ),
              SizedBox(height: 20.v),
              MainTextButton(
                text: "Отправить запрос",
                colorButton: appTheme.blueButton,
                functionOnClick: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => RecomFilm()));
                },
              ),
              
            ],
          ),
        )
 
      )
    );
  }
}