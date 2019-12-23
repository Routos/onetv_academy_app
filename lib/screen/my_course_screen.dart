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
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
              onTap: (index){
                print(index);
              },
                labelStyle: TextStyle(fontSize: 15),
                unselectedLabelColor: Color(0xFFf50217),
                indicatorPadding: EdgeInsets.only(left: 20, right: 20),
                indicator: ShapeDecoration(
                    color: Color(0xFFf50217),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Color(0xFFf50217)))),
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
