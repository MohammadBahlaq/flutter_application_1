import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Widget")),
      //Column put the widgets virtically
      body: Column(
        //for horizantal behavior
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //for virtical behavior
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 100, width: 100, color: Colors.blue),
          Container(height: 100, width: 100, color: Colors.green),
          Container(height: 100, width: 100, color: Colors.black),
        ],
      ),
    );
  }
}
