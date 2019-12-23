
import 'package:academy_app/widget/home_screen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: <Widget>[
            buildTopPartHome(),
           Column(
             children: <Widget>[
             ],
           )
          ],
        ),
      ),
    );
  }
}
