
import 'package:academy_app/screen/main_screen.dart';
import 'package:academy_app/widget/simple_animation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFffffff),
                      Color(0xFFfafafa),
                    ])),
            child: Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FadeAnimation(
                      1,
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/login.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(
                              1,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Welcome',
                                    style: TextStyle(
                                        color: Color(0xFF3E3434),
                                        fontSize: 45,
                                        fontFamily: 'SultanNahia',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Login with your existing account of ONETV Academy',
                                    style: TextStyle(
                                      color: Color(0xFF3E3434),
                                      fontSize: 14,
                                      fontFamily: 'Avenir',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              )),
                          FadeAnimation(
                              1.8,
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                          Color.fromRGBO(199, 200, 217, .3),
                                          blurRadius: 20.0,
                                          offset: Offset(0.0, 10))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            contentPadding:
                                            const EdgeInsets.only(
                                                left: 40,
                                                top: 15,
                                                bottom: 15),
                                            border: InputBorder.none,
                                            hintText: 'Username or Email',
                                            prefixIcon:
                                            Icon(Icons.account_circle),
                                            hintStyle: TextStyle(
                                                color: Color(0xFF3E3434),
                                                fontSize: 16,
                                                fontFamily: 'Avenir')),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 20.0,
                          ),
                          FadeAnimation(
                              1.9,
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                          Color.fromRGBO(199, 200, 217, .3),
                                          blurRadius: 20.0,
                                          offset: Offset(0.0, 10))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            contentPadding:
                                            const EdgeInsets.only(
                                                left: 40,
                                                top: 15,
                                                bottom: 15),
                                            border: InputBorder.none,
                                            hintText: 'Password',
                                            prefixIcon:
                                            Icon(Icons.lock_outline),
                                            hintStyle: TextStyle(
                                              color: Color(0xFF3E3434),
                                              fontSize: 16,
                                              fontFamily: 'Avenir',
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              2.2,
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>MainScreenPage()));
                                },
                                child: Container(
                                  height: 70,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                            Color.fromRGBO(199, 200, 217, .5),
                                            blurRadius: 10,
                                            spreadRadius: 3,
                                            offset: Offset(0.0, 5)),
                                        BoxShadow(
                                            color:
                                            Color.fromRGBO(199, 200, 217, .2),
                                            blurRadius: 26,
                                            spreadRadius: 3,
                                            offset: Offset(0.8, 10)),
                                      ],
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(colors: [
                                        Color(0xFFE31919),
                                        Color.fromRGBO(232, 2, 20, 0.8),
                                      ])),
                                  child: Center(
                                    child: Text(
                                      'LOG IN',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'SultanNahia',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
