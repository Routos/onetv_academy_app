import 'package:academy_app/models/department_model.dart';
import 'package:academy_app/widget/simple_animation.dart';
import 'package:flutter/material.dart';

class DepartmentScreen extends StatefulWidget {
  @override
  _DepartmentScreenState createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text(
        'DEPARTMENT',
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    ),
      body: _buildBody(),
    );
  }
}
_buildBody() {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 10),
      itemCount: departmentList.length,
      itemBuilder: (BuildContext context, int index) {
        return FadeAnimation(1,Card(
            elevation: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  height: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(departmentList[index].imgUrl))),
                ),
                Text(
                  departmentList[index].name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                )
              ],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))));
      },
    )
  );
}
