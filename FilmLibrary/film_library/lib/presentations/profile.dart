import 'dart:developer';

import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/annotation.dart';
import 'package:film_library/presentations/auth.dart';
import 'package:film_library/presentations/favourity.dart';
import 'package:film_library/presentations/film_annotation.dart';
import 'package:film_library/utils/constants/globals.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/app_decoration.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/bottom_bar.dart';
import 'package:film_library/widgets/change_email.dart';
import 'package:film_library/widgets/change_name.dart';
import 'package:film_library/widgets/change_password.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:film_library/widgets/section_settings.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.mainBlueGray,
        body: Column(
          children: [
            SizedBox(height: 70.v),
            Text("Профиль", style: theme.textTheme.headlineMedium),
            CustomImageView(
              svgPath: ImageConstant.pattern1,
            ),
            SizedBox(height: 32.v),
            Padding(
              padding: EdgeInsets.only(left: 40.h),
              child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  () {

                    for(var i in Globals.usersData){
                      if(i.currentUser == true)
                      {
                        return i.name;
                      }
                    }
                    return "";
                    
                    } (),
                  
                  style: CustomTextStyles.profileHeadlineMediumBlack,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6.v),
                Text(
                  
                  () {

                    for(var i in Globals.usersData){
                      if(i.currentUser == true)
                      {
                        return i.email;
                      }
                    }
                    return "";
                    
                    } (),

                  style: CustomTextStyles.headlineSmallGray,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            ),
            ),
            SizedBox(height: 20.v),
            SizedBox(
                height: 70.v,
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        onTapChangeName(context);
                      });
                    } ,
                    child: SectionSetting(
                      textSetting: Text("Изменить имя", style: CustomTextStyles.headlineSmallBlack),
                      leftIconPath: ImageConstant.pencilIcon,
                      rightIconPath: ImageConstant.arrowNextIcon,
                      decoration: AppDecoration.outlineBlueGray,
                    ),
                  ),
                ),
            ),
            SizedBox(
                height: 70.v,
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        onTapChangeEmail(context);
                      });
                    } ,
                    child: SectionSetting(
                      textSetting: Text("Изменить Email", style: CustomTextStyles.headlineSmallBlack),
                      leftIconPath: ImageConstant.mailIcon,
                      rightIconPath: ImageConstant.arrowNextIcon,
                      decoration: AppDecoration.outlineBlueGray,
                    ),
                  ),
                ),
            ),
            SizedBox(
                height: 70.v,
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        onTapChangePassword(context);
                      });
                    } ,
                    child: SectionSetting(
                      textSetting: Text("Изменить пароль", style: CustomTextStyles.headlineSmallBlack),
                      leftIconPath: ImageConstant.keyIcon,
                      rightIconPath: ImageConstant.arrowNextIcon,
                      decoration: AppDecoration.outlineBlueGray,
                    ),
                  ),
                ),
            ),
            SizedBox(height: 20.v),
            MainTextButton(
              text: "Выйти из аккаунта",
              colorButton: appTheme.redButton,
              functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Auth()))),
            ),
            SizedBox(height: 20.v),
            Text("История просмотра", style: CustomTextStyles.profileHeadlineMediumBlack),
            SizedBox(height: 20.v),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: () {

                    for(var i in Globals.usersData)
                    {
                      if(i.currentUser == true){
                        for(var j in i.userHistory){
                          if(j.title == "Здесь будет история просмотра")
                          {
                            return 0;
                          }
                          else
                          {
                            return i.userHistory.length;
                          }
                        }
                      }
                    }
                    
                  } 
                  (),
                  itemBuilder: (context, index) {
                    return SizedBox(
                height: 60.v,
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(
                      annotation: //Globals.history[index]
                      () {
                          
                          for(var i in Globals.usersData){
                            if(i.currentUser == true){
                              return i.userHistory[index];
                            }
                          }
                          return Annotation(title: "", 
                          year: "", 
                          country: "", 
                          genre: "", 
                          director: "", 
                          duration: "", 
                          age: "", 
                          rating: "", 
                          mainRoles: "", 
                          description: "", 
                          cinema: "", 
                          imagePath: "");

                      } ()
                      )))),
                    child: SectionSetting(
                      textSetting: Text(
                        //Globals.history[index].title,
                        () {
                          
                          for(var i in Globals.usersData){
                            if(i.currentUser == true){
                              return i.userHistory[index].title;
                            }
                          }
                          return "";

                        } (),
                         
                      style: CustomTextStyles.headlineSmallBlack),
                      rightIconPath: ImageConstant.arrowNextIcon,
                      decoration: AppDecoration.outlineBlueGray, 
                      leftIconPath: '',
                        ),
                      ),
                    ),
                    );
                    }, 
                  ),
              ),
            SizedBox(height: 20.v),
            MainTextButton(
              text: "Избранное",
              colorButton: appTheme.blueButton,
              functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Favourity()))),
            ),
            SizedBox(height: 20.v),
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

onTapChangeName(final BuildContext context) {
  showDialog(
    context: context,
    builder: (final _) => ChangeNameDialog(
      headText: "Изменение имени",
      inputHintText: "Ваше новое имя",
    ),
  );
}

onTapChangeEmail(final BuildContext context) {
  showDialog(
    context: context,
    builder: (final _) => ChangeEmailDialog(
      headText: "Изменение почты",
      inputHintText: "Новый Email",
    ),
  );
}

onTapChangePassword(final BuildContext context) {
  showDialog(
    context: context,
    builder: (final _) => ChangePasswordDialog(
      headText: "Изменение пароля",
      inputHintText: "Новый пароль",
    ),
  );
}
                