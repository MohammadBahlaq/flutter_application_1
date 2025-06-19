import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).height);
    return Scaffold(
      appBar: AppBar(title: Text('Flexible widget')),
      body: Column(
        ///Flexible and Expanded work just in Column & Row
        children: [
          Flexible(
            flex: 4,
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Flexible(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          Container(height: 100, width: double.infinity, color: Colors.green),
          Container(height: 100, width: double.infinity, color: Colors.black),
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
