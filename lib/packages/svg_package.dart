import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPackage extends StatelessWidget {
  const SvgPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('PermissionHandler package')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.countdown,
              height: 100,
              width: 100,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),

            SvgPicture.network(
              'https://www.svgrepo.com/show/316860/folder-simple.svg',
              height: 100,
              width: 100,
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
            ),

            // Container(
            //   color: Colors.red,
            //   height: 100,
            //   width: 100,
            //   child: SvgPicture.network(
            //     'https://www.svgrepo.com/show/316860/folder-simple.svg',
            //   ),
            // ),
            // SizedBox(height: 20),
            // SvgPicture.asset(
            //   AppImages.attendanceFingerprint,
            //   fit: BoxFit.scaleDown,
            //   colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            // ),
          ],
        ),
      ),
    );
  }
}
