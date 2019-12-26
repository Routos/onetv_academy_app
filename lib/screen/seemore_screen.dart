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
                return Stack(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(2, 4),
                                color: Colors.black26,
                                blurRadius: 3),
                          ]),
                    ),
                    Container(
                      height: 150,
                      width: 110,
                      margin: EdgeInsets.only(
                        left: 25,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(courseList[index].imgUrl),
                              fit: BoxFit.cover)),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
