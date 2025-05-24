import 'package:flutter/material.dart';

class Part4 extends StatelessWidget {
  const Part4({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: ListView.builder(
           itemBuilder: (context, index) {
             return ListTile(
                 title: Text('Item $index'),
                 subtitle: Text('Subtitle $index'),
                 leading: Icon(Icons.star),
                 trailing: Icon(Icons.arrow_forward),
                 onTap: () {
                   print('Tapped on item $index');
                 }
             );
           }),
     )
   );
  }

}