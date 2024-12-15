import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/advisor.dart';
import 'package:film_library/utils/constants/globals.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';

class FavouriteFilms extends StatefulWidget {
  FavouriteFilms({super.key});

  @override
  _FavouriteFilmsState createState() => _FavouriteFilmsState();
}

class _FavouriteFilmsState extends State<FavouriteFilms> {
  String searchString = "";

  @override
  Widget build(BuildContext context) {
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
              Text("Любимые фильмы", style: theme.textTheme.headlineMedium),
              CustomImageView(
                svgPath: ImageConstant.pattern2,
              ),
              SizedBox(height: 20.v),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: MainTextFormField(
                    hintText: "Введите фильм",
                    width: 400.h,
                    onChanged: (value) {
                      setState(() {
                        searchString = value.toLowerCase();
                      });  
                    },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h, right: 10.h),
                child: Text(
                "Введите фильм, на основе которого мы\n посоветуем вам фильм", 
                style: CustomTextStyles.headlineSmallGray,
                textAlign: TextAlign.center,
                textScaler: TextScaler.linear(1.2),
                )
              ),
              Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: annotations.length,
                  itemBuilder: (context, index) {
                    return annotations[index].title.toLowerCase().contains(searchString)
                    ? Container(
                        height: 120.v, 
                        decoration: BoxDecoration(
                          color: appTheme.whiteAnnotation,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: CustomImageView(
                                imagePath: annotations[index].imagePath
                                ),
                              ),
                            SizedBox(width: 20.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.v),
                                Text(annotations[index].title, style: CustomTextStyles.headlineSmallBlack),
                                SizedBox(height: 5.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(annotations[index].year, style: CustomTextStyles.headlineSmallGray),
                                    SizedBox(width: 20.h),
                                    Text(annotations[index].duration, style: CustomTextStyles.headlineSmallGray),
                                    SizedBox(width: 20.h),
                                    Text(annotations[index].age, style: CustomTextStyles.headlineSmallGray),
                                  ]
                                ),
                                SizedBox(height: 5.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(annotations[index].rating, style: CustomTextStyles.headlineSmallGray),
                                    SizedBox(width: 2.h),
                                    Icon(Icons.star),
                                  ]
                                ),
                              ],
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.choiseButton,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 20.h),
                                onTap: () {
                                  
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Advisor()));
                                  }
                               ),
                            ),
                          ],
                        ),
                      )
                      : Container();
                    }, 
                  ),
              ),
              SizedBox(height: 20.h),
              MainTextButton(
                text: "Пропустить выбор фильмов",
                colorButton: appTheme.redButton,
                functionOnClick: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Advisor()));
                },
              ),
              SizedBox(height: 20.h),
              ],
            )
          )
      )
    );
  }
}