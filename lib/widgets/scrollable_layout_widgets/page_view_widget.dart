import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_images.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  static const List list = [
    AppImages.garden2,
    AppImages.garden2,
    AppImages.garden2,
    AppImages.garden2,
    AppImages.garden2,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageView widget')),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        reverse: false,
        physics: BouncingScrollPhysics(),
        onPageChanged: (index) {
          print(index);
        },
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(AppImages.garden2),
          );
        },
      ),
      // body: PageView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: false,
      //   physics: BouncingScrollPhysics(),
      //   onPageChanged: (index) {
      //     print(index);
      //   },
      //   children: [
      //     Text('Start'),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden2),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden2),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden2),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden2),
      //     ),
      //     Text('End'),
      //   ],
      // ),
      // body: PageView.builder(
      //   onPageChanged: (index) {
      //     print(index);
      //   },
      //   reverse: false,
      //   physics: BouncingScrollPhysics(),
      //   scrollDirection: Axis.horizontal,
      //   itemCount: 5,
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden2),
      //     );
      //   },
      // ),
      // body: PageView(
      //   onPageChanged: (index) {
      //     print(index);
      //   },
      //   reverse: false,
      //   physics: BouncingScrollPhysics(),
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden2),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden2),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(10),
      //       child: Image.asset(AppImages.garden),
      //     ),
      //   ],
      // ),
    );
  }
}
