import 'package:film_library/data/filmLibrary.dart';
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
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
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
                  "Владислав",
                  style: CustomTextStyles.profileHeadlineMediumBlack,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6.v),
                Text(
                  "vaganov.vladislav2015@yandex.ru",
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
                    onTap: () => (),
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
                    onTap: () => (),
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
                    onTap: () => (),
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
                    if(Globals.history[0].title == "Здесь будет история просмотра")
                    {
                      return 0;
                    }
                    else
                    {
                      return Globals.history.length;
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
                    onTap: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FilmAnnotation(annotation: Globals.history[index])))),
                    child: SectionSetting(
                      textSetting: Text(Globals.history[index].title, style: CustomTextStyles.headlineSmallBlack),
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