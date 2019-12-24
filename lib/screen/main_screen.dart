import 'package:academy_app/screen/account_screen.dart';
import 'package:academy_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'departmet_screen.dart';
import 'inclass_screen.dart';
import 'my_course_screen.dart';


class MainScreenPage extends StatefulWidget {
  @override
  _MainScreenPageState createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  int _pageIndex = 0;
  List<Widget> _pageList = [
    HomeScreenPage(),
    DepartmentScreen(),
    MyCourseScreen(),
    InclassScreen(),
    UserAccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 20.0,
        iconSize: 24,
        selectedFontSize: 13,
        unselectedFontSize: 11,
        selectedLabelStyle: TextStyle(
          fontFamily: 'AvenirBold'
        ),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'AvenirBold'
        ),
        selectedItemColor: Color(0xFFd90919),
        unselectedItemColor: Color(0xFFd90919),
        currentIndex: _pageIndex,
        onTap: (index) {
        setState(() {
          _pageIndex = index;
        });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_quilt,
            ),
            title: Text(
              'Department',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_filled,
            ),
            title: Text(
              'My Course',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range,
            ),
            title: Text(
              'InClass',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            title: Text(
              'Account',
            ),
          ),
        ],
      ),
      body: _pageList[_pageIndex],
    );
  }
}
