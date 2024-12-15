import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/annotation.dart';
import 'package:film_library/presentations/favourity.dart';
import 'package:film_library/utils/constants/globals.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:flutter/material.dart';

class FilmAnnotation extends StatefulWidget{
  const FilmAnnotation ({super.key, required this.annotation});

  final Annotation annotation;

  @override
  _FilmAnnotationState createState() => _FilmAnnotationState();
}

class _FilmAnnotationState extends State<FilmAnnotation>{
  
  late String searchString = "";

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
              Text(widget.annotation.title, style: theme.textTheme.headlineMedium),
              CustomImageView(
                svgPath: ImageConstant.pattern2,
              ),
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: widget.annotation.imagePath
                ),
              SizedBox(height: 10.v),
              Expanded(
                child: Container(
                  color: appTheme.whiteAnnotation,
                  child: Column(
                          children: [
                            SizedBox(height: 10.v),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                "Год производства", 
                                style: CustomTextStyles.headlineSmallGray,
                                textScaler: TextScaler.linear(1.1),
                                )
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20.h),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      widget.annotation.year,
                                      textAlign: TextAlign.right, 
                                      style: CustomTextStyles.headlineSmallBlack2,
                                      textScaler: TextScaler.linear(1.1),
                                      )
                                    ),
                                ),
                              ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "Страна", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.country,
                                    textAlign: TextAlign.right, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "Жанр", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.genre,
                                    textAlign: TextAlign.right, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "Режиссёр", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.director,
                                    textAlign: TextAlign.right, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "Время", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.duration,
                                    textAlign: TextAlign.right, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "Возраст", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.age,
                                    textAlign: TextAlign.right, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "Рейтинг", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.rating,
                                    textAlign: TextAlign.right, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "В главных ролях", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h, left: 40.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.mainRoles,
                                    textAlign: TextAlign.right, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "Описание фильма", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h, left: 5.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.description,
                                    textAlign: TextAlign.right, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),
                        

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                              "Кинотеатры", 
                              style: CustomTextStyles.headlineSmallGray,
                              textScaler: TextScaler.linear(1.1),
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.annotation.cinema,
                                    textAlign: TextAlign.left, 
                                    style: CustomTextStyles.headlineSmallBlack2,
                                    textScaler: TextScaler.linear(1.1),
                                    )
                                  ),
                              ),
                            ),
                          ],
                        ),

                    ],
                  ),
                )
              ),

              SizedBox(height: 20.v),
              // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Favourity()))
              () {
                for(var i in Globals.usersData){
                  if(i.currentUser == true){
                    for(var j in i.favourity)
                    {
                      if(j == widget.annotation){
                        return MainTextButton(
                          text: "Удалить из избранного",
                          colorButton: appTheme.redButton,
                          functionOnClick: () {
                            
                            setState(() {
                              Globals.addFilmInFavourity(widget.annotation);
                              Globals.cleanOneFilmInFavourity(widget.annotation);
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Favourity()));
                            });

                              //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Favourity()));
                          },
                        );
                      }
                    }
                  }
                }
                return MainTextButton(
                  text: "Добавить в избранное",
                  colorButton: appTheme.blueButton,
                  functionOnClick: () {
                    setState(() {
                      Globals.addFilmInFavourity(widget.annotation);
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Favourity()));
                    });
                },
              );


              } (),
              
              SizedBox(height: 20.v),
            ],
          ),
        )
 
      )
      );
  }
}