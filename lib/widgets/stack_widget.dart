import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack Widget",
          style: TextStyle(fontWeight: FontWeight.w700, fontFamily: "Pnu"),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          children: [
            Container(height: 300, width: 300, color: Colors.red),
            Positioned(
              bottom: -50,
              child: Container(height: 200, width: 200, color: Colors.blue),
            ),
            Positioned(
              top: -40,
              child: Container(height: 100, width: 100, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
