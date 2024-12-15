import 'package:film_library/presentations/advisor.dart';
import 'package:film_library/presentations/library.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Advisor extends StatefulWidget {
  Advisor({super.key});

  @override
  _AdvisorState createState() => _AdvisorState();
}

class _AdvisorState extends State<Advisor> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
        backgroundColor: Colors.green,
        body: () {setState(() {
          MainBottomBar();
        });} (), 
       ),
    );
  }
}