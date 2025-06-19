import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded widget')),
      body: Column(
        children: [
          Container(height: 300, color: Colors.brown),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
