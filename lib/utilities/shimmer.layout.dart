import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double inRowLineHeight = 10;
    double inRowLineWeight = 200;
    return  ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context,int index){
        return Shimmer.fromColors(
          baseColor: Colors.grey[400],
          highlightColor: Colors.white,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            height: 160,
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        bottomLeft: Radius.circular(3)),
                  ),
                ),
                Container(
                  width: 200,
                  margin:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.grey,
                        width: inRowLineWeight,
                        height: inRowLineHeight,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.grey,
                        width: inRowLineWeight,
                        height: inRowLineHeight,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        color: Colors.grey,
                        width: inRowLineWeight*0.75,
                        height: inRowLineHeight,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
