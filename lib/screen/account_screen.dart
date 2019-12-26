import 'package:academy_app/screen/log_in_screen.dart';
import 'package:academy_app/utilities/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserAccountScreen extends StatefulWidget {
  @override
  _UserAccountScreenState createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        title: Text(
          'PROFILE',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 160,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.5, 2.0),
                      blurRadius: 20),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                      radius: 45,
                      backgroundImage:
                          AssetImage('assets/images/profile.jpeg')),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.red)),
                      color: Colors.white,
                      textColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      onPressed: () {
                        showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              return CupertinoAlertDialog(
                                title: Text('Change Password'),
                                content: Card(
                                  child: Column(
                                    children: <Widget>[
                                      TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                      Divider(
                                        color: Colors.black,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  CupertinoDialogAction(
                                    child: Text('Yes'),
                                  ),
                                  CupertinoDialogAction(
                                    child: Text(
                                      'No',
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Text(
                        "Change Password".toUpperCase(),
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Consumer<ThemeChanger>(
                            builder: (context, ThemeChanger notifier, child) =>
                                SwitchListTile(
                                  title: Text(
                                    'Dark Mode',
                                    style: TextStyle(
                                      fontFamily: 'AvenirBold',
                                      fontSize: 15,
                                    ),
                                  ),
                                  onChanged: (val) {
                                    notifier.toggleTheme();
                                  },
                                  value: notifier.chooseTheme,
                                )),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Oun Routo'.toUpperCase(),
                          style: TextStyle(
                              fontFamily: 'SultanNahia', fontSize: 30),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'rout.o@digitalsky.com.kh',
                          style: TextStyle(
                              fontSize: 17, fontStyle: FontStyle.normal),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Software Developer'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'it department'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LoginScreen()));
                          },
                          child: Container(
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Theme.of(context).primaryColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 5,
                                      offset: Offset(0.0, 2.0))
                                ]),
                            child: Center(
                              child: Text(
                                'LOG OUT',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
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
