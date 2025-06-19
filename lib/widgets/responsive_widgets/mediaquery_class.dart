import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/responsive.dart';

class MediaqueryClass extends StatelessWidget {
  const MediaqueryClass({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    log("height = $height");
    log("width = $width");

    return Scaffold(
      appBar: AppBar(title: Text('MediaQuery')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: context.h(57),
              width: context.w(366),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(7),
              ),
              alignment: Alignment.center,
              child: Text(
                'Back to History',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
