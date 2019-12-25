import 'package:academy_app/models/department_model.dart';
import 'package:academy_app/screen/skill_show_bydeaprtment.dart';
import 'package:academy_app/utilities/style.dart';
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
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        title: Text(
          'DEPARTMENT',
          style: kAppbarTitle,
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
          return FadeAnimation(
            1,
            (GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SkillShowByDepartment(
                              department: departmentList[index],
                            )));
              },
              child: Card(
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                       child: Image.asset(departmentList[index].imgUrl,height: 120,width: 120,),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        departmentList[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18,),
                      )
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            )),
          );
        },
      ));
}
