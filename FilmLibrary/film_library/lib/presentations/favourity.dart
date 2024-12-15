import 'dart:developer';

import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/film_annotation.dart';
import 'package:film_library/utils/constants/globals.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/bottom_bar.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Favourity extends StatefulWidget{
  const Favourity ({super.key});

  @override
  _FavourityState createState() => _FavourityState();
}

class _FavourityState extends State<Favourity>{
  
  String searchString = "";
  int idUser = 0;

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
                onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MainBottomBar()))),
              ),
              //SizedBox(height: 70.v),
              Text("Избранное", style: theme.textTheme.headlineMedium),
              CustomImageView(
                svgPath: ImageConstant.pattern1,
              ),
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

              Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount:
                  (){
                  
                      for(var i in Globals.usersData)
                      {
                        if(i.currentUser == true){
                            log(i.favourity.length.toString());
                            return i.favourity.length;
                        }
                        idUser++;
                      }
                      return 0;
                  }(),
                  
                  itemBuilder: (context, index) {
                    return Globals.usersData[idUser].favourity[index].title.toLowerCase().contains(searchString)
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
                                imagePath: 
                                (){
                  
                                  for(var i in Globals.usersData)
                                  {
                                    if(i.currentUser == true){
                                      return i.favourity[index].imagePath;
                                    }
                                  }
                                  return "";

                                }()

                                ),
                              ),
                            SizedBox(width: 20.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.v),
                                Text(
                                  (){
                  
                                  for(var i in Globals.usersData)
                                  {
                                    if(i.currentUser == true){
                                      return i.favourity[index].title;
                                    }
                                  }
                                  return "";
                                }(),

                                style: CustomTextStyles.headlineSmallBlack),
                                SizedBox(height: 5.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      (){
                  
                                      for(var i in Globals.usersData)
                                      {
                                        if(i.currentUser == true){
                                          return i.favourity[index].year;
                                        }
                                      }
                                      return "";
                                      }(),
                                    style: CustomTextStyles.headlineSmallGray),
                                    SizedBox(width: 20.h),
                                    Text(
                                      (){
                  
                                      for(var i in Globals.usersData)
                                      {
                                        if(i.currentUser == true){
                                          return i.favourity[index].duration;
                                        }
                                      }
                                      return "";
                                      }(),
                                    style: CustomTextStyles.headlineSmallGray),
                                    SizedBox(width: 20.h),
                                    Text(
                                      (){
                  
                                      for(var i in Globals.usersData)
                                      {
                                        if(i.currentUser == true){
                                          return i.favourity[index].age;
                                        }
                                      }
                                      return "";
                                      }(),
                                    style: CustomTextStyles.headlineSmallGray),
                                  ]
                                ),
                                SizedBox(height: 5.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                       (){
                  
                                      for(var i in Globals.usersData)
                                      {
                                        if(i.currentUser == true){
                                          return i.favourity[index].rating;
                                        }
                                      }
                                      return "";
                                      }(),
                                    style: CustomTextStyles.headlineSmallGray),
                                    SizedBox(width: 2.h),
                                    Icon(Icons.star),
                                  ]
                                ),
                              ],
                            ),
                            Expanded(
                                  child: CustomImageView(
                                  svgPath: ImageConstant.infoButton,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 20.h),
                                  onTap: () {
                                    Globals.addFilmInHistory(annotations[index]);
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(
                                      annotation: 
                                      () {
                                        for(var i in Globals.usersData){
                                          if(i.currentUser == true){
                                            for(var j in annotations){
                                              if(j.title == i.favourity[index].title){
                                                return j;
                                              }
                                            }
                                          }
                                        }
                                        return annotations[0];
                                      } ()
                                      
                                      )));
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

              SizedBox(height: 20.v),

              MainTextButton(
                text: "Очистить избранное",
                colorButton: appTheme.blueButton,
                functionOnClick: () {
                  setState(() {
                    Globals.cleanFilmsInFavourity();
                    //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Favourity()));
                  }); 
                },
              ),
              SizedBox(height: 20.v),
            ],
          ),
        )
 
      )
      );
  }
}