import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row Widget")),
      body: Row(
        //Row put the widgets horizantal
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        ///To make the Row take it's width depends on children
        ///and not to take the whole width
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 50, width: 50, color: Colors.red),
          Container(height: 50, width: 50, color: Colors.blue),
          Container(height: 50, width: 50, color: Colors.green),
          Container(height: 50, width: 50, color: Colors.black),
        ],
      ),
    );
  }
}
