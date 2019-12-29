import 'dart:async';
import 'dart:convert';

import 'package:academy_app/models/department_model.dart';
import 'package:academy_app/models/imgList.dart';
import 'package:academy_app/utilities/shimmer.layout.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
          child: LoadingList(),
        ),
      ),
    );
  }
}

class LoadingList extends StatefulWidget {
  @override
  _LoadingListState createState() => _LoadingListState();
}

class _LoadingListState extends State<LoadingList> {
  bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    Timer timer = Timer(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    return _isLoading
        ? ShimmerLayout()
        : CourseContainerLayout(
            timer: timer,
          );
  }
}

class CourseContainerLayout extends StatefulWidget {
  final Timer timer;
  CourseContainerLayout({this.timer});
  @override
  _TestStateState createState() => _TestStateState();
}

class _TestStateState extends State<CourseContainerLayout> {
  List dogList = List();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    fetchPerTen();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchPerTen();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  fetch() async {
    final respone = await http.get('https://dog.ceo/api/breeds/image/random');
    if (respone.statusCode == 200) {
      setState(() {
        dogList.add(json.decode(respone.body)['message']);
      });
    } else {
      throw Exception('failed to load image');
    }
  }

  fetchPerTen() {
    for (int i = 0; i < 9; i++) {
      fetch();
    }
  }

  @override
  Widget build(BuildContext context) {
    widget.timer.cancel();
    return ListView.builder(
        controller: _scrollController,
        itemCount: dogList.length,
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
                  child: Image.network(
                    dogList[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        courseList[3].title.length > 50
                            ? courseList[3].title.substring(1, 50)
                            : courseList[3].title,
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
                        courseList[4].description.length > 120
                            ? "${courseList[4].description.substring(1, 120)}..."
                            : courseList[4].description,
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
        });
  }
}
