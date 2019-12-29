import 'package:academy_app/models/department_model.dart';
import 'package:academy_app/models/imgList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeemoreScreen extends StatelessWidget {
  final int skillId;

  SeemoreScreen({this.skillId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        title: Text(
          "${skill[this.skillId].title} Skill".toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: courseList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(3, 4),
                            color: Colors.black12,
                            blurRadius: 4),
                      ]),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(3),
                                bottomLeft: Radius.circular(3)),
                            image: DecorationImage(
                                image: AssetImage(courseList[index].imgUrl),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: 200,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              courseList[index].title.length > 50
                                  ? courseList[index].title.substring(1, 50)
                                  : courseList[index].title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'CM Sans Serif',
                                  fontSize: 16,
                                  height: 1.5),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              courseList[index].description.length > 120
                                  ? "${courseList[index].description.substring(1, 120)}..."
                                  : courseList[index].description,
                              style: TextStyle(
                                  fontFamily: 'CM Sans Serif',
                                  fontSize: 12,
                                  height: 1.3,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
