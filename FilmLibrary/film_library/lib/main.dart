import 'package:film_library/presentations/auth.dart';
import 'package:film_library/presentations/film_annotation.dart';
import 'package:film_library/presentations/advisor.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/size_utils.dart';
import 'package:film_library/utils/theme/custom_text_styles.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:film_library/widgets/custom_image_view.dart';
import 'package:film_library/widgets/main_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
     SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
          backgroundColor: appTheme.mainBlueGray,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 70.v),
              Text("FilmLibrary", style: CustomTextStyles.startHeadlineLargeBlack),
              CustomImageView(
                svgPath: ImageConstant.startPattern1,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(left: 60.v),
              ),
              SizedBox(height: 10.v),
              CustomImageView(
                svgPath: ImageConstant.startPattern2,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(left: 40.v),
              ),
              SizedBox(height: 10.v),
              CustomImageView(
                svgPath: ImageConstant.startPattern3,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(left: 20.v),
              ),
              SizedBox(height: 40.v),
              MainTextButton(
                text: "Старт",
                colorButton: appTheme.blueButton,
                functionOnClick: () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Auth())))
              ),
              CustomImageView(
                imagePath: ImageConstant.startVideotapes,
              ),
            ],
          )
        ),
    );
  }
}

// () => (Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Auth())))