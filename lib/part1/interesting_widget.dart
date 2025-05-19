import 'package:flutter/material.dart';

Widget interestingWidget() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.red,
            width: 200,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 200,
            height: 100,
          ),
        ],
      ),
      Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
      )
    ],
  );
}