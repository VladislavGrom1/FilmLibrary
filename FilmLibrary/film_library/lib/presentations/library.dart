import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/annotation.dart';
import 'package:film_library/presentations/film_annotation.dart';
import 'package:film_library/utils/constants/globals.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/bottom_bar.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  Library({super.key, required this.filmAnnotations});

  final List<Annotation> filmAnnotations;

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  
  String searchString = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.mainBlueGray,
        body: Column(
          children: [
          SizedBox(height: 70.v),
            Text("Библиотека", style: theme.textTheme.headlineMedium),
            CustomImageView(
              svgPath: ImageConstant.pattern2,
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
                                svgPath: ImageConstant.infoButton,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 20.h),
                                onTap: () {
                                  Globals.addFilmInHistory(annotations[index]);
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: annotations[index])));
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
          Align(
            alignment: Alignment.bottomCenter,
            child: () {setState(() {const MainBottomBar();});} (),  
          ),
        ],
        )
       ),
    );
  }
}


