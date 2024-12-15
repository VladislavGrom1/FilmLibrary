import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/annotation.dart';
import 'package:film_library/presentations/film_annotation.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:film_library/widgets/query.dart';
import 'package:flutter/material.dart';

class RecomFilm extends StatefulWidget{
  const RecomFilm ({super.key});

  @override
  _RecomFilmState createState() => _RecomFilmState();
}

class _RecomFilmState extends State<RecomFilm>{
  
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
              Text("Рекомендуемый фильм", style: theme.textTheme.headlineMedium),
              CustomImageView(
                svgPath: ImageConstant.pattern2,
              ),
              SizedBox(height: 20.v),
              Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 184, 174, 215),
                    width: 500.h,
                    height: 610.v,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.filmPoster3,
                          alignment: Alignment.topCenter,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: appTheme.mainBlueGray,
                            border: Border.all(
                              color: appTheme.blueButton,
                              width: 3.h,
                            ),
                          ),
                          width: 350.h,
                          height: 70.v,
                          child: 
                            Align(alignment: Alignment.center,
                              child: Text("Тёмный рыцарь", style: CustomTextStyles.advisorHeadlineSmallBlack)),
                        ),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Бэтмэн поднимает ставки в войне с криминалом.", 
                            style: CustomTextStyles.recomHeadlineMediumBlack,
                            textAlign: TextAlign.center,
                            )
                          ),
                        SizedBox(height: 10.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Ключевые слова", 
                            style: CustomTextStyles.recomHeadlineMediumBlack,
                            textAlign: TextAlign.center,
                            )
                          ),
                        SizedBox(height: 10.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "#cупергерои, #драма, #бэтмэн, #рейтинг", 
                            style: CustomTextStyles.recomHeadlineMediumWhite,
                            textAlign: TextAlign.center,
                            )
                          ),
                        SizedBox(height: 20.v),  
                        MainTextButton(
                          text: "Подробнее о фильме",
                          colorButton: appTheme.blueButton,
                          functionOnClick: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: annotations[2])));
                          },
                        ),  
                      ]
                    ),
                  ),
                  SizedBox(height: 20.v),
                  MainTextButton(
                      text: "Уточнить запрос",
                      colorButton: appTheme.blueButton,
                      functionOnClick: () {
                        setState(() {
                        onTapWriteQuery(context);
                      });
                      }
                      ),
                ],
              )


            ]
         )
        )
      )
    );
  }
}

onTapWriteQuery(final BuildContext context) {
  showDialog(
    context: context,
    builder: (final _) => Query(
      headText: "Уточните запрос",
      inputHintText: "Введите запрос",
    ),
  );
}