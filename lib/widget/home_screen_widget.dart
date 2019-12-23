import 'package:academy_app/widget/simple_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'customShapClipper.dart';

buildTopPartHome() {
  return Stack(
    children: <Widget>[
      FadeAnimation(1,ClipPath(
        clipper: CustomShapeClipper(),
        child: Container(
            height: 300,
            color: Color(0xFFf50217),
            child:SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20,),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 25,),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 10,
                      child: TextField(
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'SultanNahia'
                        ),
                        decoration: InputDecoration(
                            hintText: 'Searching Course',
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'SultanNahia'
                            ),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: Colors.black,size: 24,)
                        ),
                      ),
                    ),
                  ),
                 FadeAnimation(1.3,Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: SvgPicture.asset(
                      'assets/images/cover.svg',
                      width: 200,
                    ),
                  ),),
                ],
              ),
            )
        ),
      )),
    Positioned(
        bottom: 30,
        right: 20,
        child:FadeAnimation(1,Text(
          'Hey, What would you like to \nlearn today?',style: TextStyle(
            fontFamily: 'AvenirBold',
            color: Colors.white,
            fontSize: 16,
            height: 1.5
        ),
        )),
      )
    ],
  );
}