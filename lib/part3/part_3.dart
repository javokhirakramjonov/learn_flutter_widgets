import 'package:flutter/material.dart';

class Part3 extends StatefulWidget {
  const Part3({super.key});

  @override
  State<Part3> createState() => _Part3State();
}

class _Part3State extends State<Part3> {
  bool checkBoxValue = false;
  Language language = Language.english;
  bool switchValue = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              activeColor: Colors.blue,
              value: checkBoxValue,
              onChanged: (value) {
                setState(
                  () {
                    setState(() {
                      checkBoxValue = value ?? false;
                    });
                  },
                );
              },
            ),
            ...Language.values.map((e) => RadioListTile(
                  value: e,
                  groupValue: language,
                  onChanged: (value) {
                    setState(() {
                      language = value ?? Language.english;
                    });
                  },
                  title: Text(e.name),
                )),
            Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                }),
            GestureDetector(
              onTap: () {
                setState(() {
                  switchValue = !switchValue;
                });
              },
              child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Language preferences"),
                          Text("English")
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  )),
            ),
            Material(
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: Duration(milliseconds: 5000),
                    content: Row(
                      children: [
                        Text("Switch has been changed"),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          },
                          icon: Icon(Icons.close, color: Colors.white),
                        )
                      ],
                    ),
                    backgroundColor: Colors.blue,
                  ));

                  setState(() {
                    switchValue = !switchValue;
                  });
                },
                child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Language preferences"),
                            Text("English")
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

enum Language { english, arabic, uzbek }
