import 'package:film_library/data/filmLibrary.dart';
import 'package:film_library/presentations/services.dart';
import 'package:film_library/presentations/library.dart';
import 'package:film_library/presentations/profile.dart';
import 'package:film_library/utils/constants/image_constants.dart';
import 'package:film_library/utils/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainBottomBar extends StatefulWidget {
  const MainBottomBar({super.key});

  _MainBottomBarState createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    Profile(),
    Library(filmAnnotations: annotations),
    Services()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: appTheme.mainBlueGray,
        backgroundColor: appTheme.blueBottom,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem(
            icon: 
            () { 
            if(_currentIndex == 0)
            {
              return SvgPicture.asset(ImageConstant.profileIconBlue);
            }
            else
            {
              return SvgPicture.asset(ImageConstant.profileIconBlack);
            }
            } (),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:
            () { 
            if(_currentIndex == 1)
            {
              return SvgPicture.asset(ImageConstant.libraryIconBlue);
            }
            else
            {
              return SvgPicture.asset(ImageConstant.libraryIconBlack);
            }
            } (),
            label: "",
          ),
          BottomNavigationBarItem(
            icon:
            () { 
            if(_currentIndex == 2)
            {
              return SvgPicture.asset(ImageConstant.searchIconBlue);
            }
            else
            {
              return SvgPicture.asset(ImageConstant.searchIconBlack);
            }
            } (),
            label: "",
          )
        ],
      ),
    );
  }
}