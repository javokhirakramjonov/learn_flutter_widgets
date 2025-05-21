import 'package:flutter/material.dart';
import 'package:learn_widgets/part1/interesting_widget.dart';

class LearnWidgetsPart1 extends StatelessWidget {
  const LearnWidgetsPart1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Hello World!"),
              Text("Hello Uzbekistan!"),
              Text("Hi"),
              Container(
                color: Colors.yellow,
                child: Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(color: Colors.red, child: Text("1")),
                    Container(color: Colors.green, child: Text("2")),
                    Container(color: Colors.blue, child: Text("3")),
                  ],
                ),
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Text(
                "Hi my name is Javahere, I am 22 years old. I am from Uzbekistan",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xFF2d4463),
                  backgroundColor: Colors.yellow,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              interestingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
