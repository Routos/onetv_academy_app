import 'package:academy_app/utilities/style.dart';
import 'package:flutter/material.dart';

class MyCourseScreen extends StatefulWidget {
  @override
  _MyCourseScreenState createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'My Course'.toUpperCase(),
              style: kAppbarTitle
            ),
            elevation: 0,
            bottom: TabBar(
              onTap: (index){
                print(index);
              },
                labelStyle: TextStyle(fontSize: 15),
                indicatorPadding: EdgeInsets.only(left: 20, right: 20),
                indicator: ShapeDecoration(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color:Colors.white))),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("ALL"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("ONGOING"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("COMPLETED"),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(

              children: [
            Icon(Icons.apps),
            Icon(Icons.movie),
            Icon(Icons.games),
          ]),
        ));
  }
}
