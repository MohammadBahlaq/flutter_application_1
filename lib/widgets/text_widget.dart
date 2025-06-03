import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widget")),
      body: Center(
        child: Text(
          "This is my Text This is my Text This is my Text This is my Text This is my Text This is my Text This is my Text This is my Text This is my Text This is my Text",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          // textDirection: TextDirection.rtl,
          style: TextStyle(
            backgroundColor: Colors.red,
            color: Colors.white,
            fontSize: 16.5,
            fontFamily: "Schyler",
          ),
        ),
      ),
    );
  }
}
