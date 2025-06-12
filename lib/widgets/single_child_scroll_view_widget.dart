import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_images.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView widget"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppImages.garden, fit: BoxFit.fill),
            SizedBox(width: 10),
            Image.asset(AppImages.garden, fit: BoxFit.fill),
            SizedBox(width: 10),
            Image.asset(AppImages.garden, fit: BoxFit.fill),
            SizedBox(width: 10),
            Image.asset(AppImages.garden, fit: BoxFit.fill),
            SizedBox(width: 10),
            Image.asset(AppImages.garden, fit: BoxFit.fill),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
