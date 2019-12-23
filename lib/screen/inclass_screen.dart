import 'package:flutter/material.dart';

class InclassScreen extends StatefulWidget {
  @override
  _InclassScreenState createState() => _InclassScreenState();
}

class _InclassScreenState extends State<InclassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Theme.of(context).primaryColor,
        elevation: 0.0,
        title: Text(
          'InClass'.toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
