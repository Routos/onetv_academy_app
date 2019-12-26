import 'package:academy_app/models/department_model.dart';
import 'package:academy_app/models/imgList.dart';
import 'package:flutter/material.dart';

class SkillShowByDepartment extends StatefulWidget {
  final Department department;

  SkillShowByDepartment({this.department});

  @override
  _SkillShowByDepartmentState createState() => _SkillShowByDepartmentState();
}

class _SkillShowByDepartmentState extends State<SkillShowByDepartment> {
  @override
  Widget build(BuildContext context) {
    TextStyle kTitleRow = TextStyle(fontWeight: FontWeight.w700, fontSize: 18);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        title: Text(
          '${widget.department.name} Department'.toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              CourseskillScrolling(
                kTitleRow: kTitleRow,
                rowId: 0,
              ),
              CourseskillScrolling(
                kTitleRow: kTitleRow,
                rowId: 1,
              ),
              CourseskillScrolling(kTitleRow: kTitleRow, rowId: 2),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseskillScrolling extends StatelessWidget {
  final TextStyle kTitleRow;
  final int rowId;

  CourseskillScrolling({this.kTitleRow, this.rowId});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Text(
              skill[rowId].title,
              style: kTitleRow,
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Text(
                  "See All",
                  style: kTitleRow,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 170,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: skillList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print(skillList[index].title);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 150,
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(0.3, 0.0),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ],
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(skillList[index].imgUrl),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${skillList[index].title.substring(0, 15)} ...',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                );
              }),
        )
      ],
    );
  }
}
