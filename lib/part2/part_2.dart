import 'package:flutter/material.dart';

class Part2Example extends StatelessWidget {
  const Part2Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Part 2',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 40,
            children: [
              Text("Part 2"),
              Text("This is under Part 2"),
              SizedBox(
                width: 60,
                height: 60,
                child: Container(color: Colors.blue),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.blue, height: 100),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.purple, height: 100),
                  ),
                ],
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://randomuser.me/api/portraits/men/5.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Icon(Icons.add, color: Colors.blue, size: 80),
              ElevatedButton(
                onPressed: () {
                  print("Button clicked");
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Click me"), Icon(Icons.add)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
