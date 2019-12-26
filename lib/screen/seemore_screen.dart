import 'package:flutter/material.dart';

class SeemoreScreen extends StatelessWidget {
  final String appbarTitle;
  SeemoreScreen({this.appbarTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.0,
        title: Text(
          'title',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
