import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/responsive.dart';
import 'package:flutter_application_1/widgets/scrollable_layout_widgets/list_view_widget.dart';

class MediaqueryClass extends StatefulWidget {
  const MediaqueryClass({super.key});

  @override
  State<MediaqueryClass> createState() => _MediaqueryClassState();
}

class _MediaqueryClassState extends State<MediaqueryClass> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.red,
        systemNavigationBarColor: Colors.green,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(title: Text('MediaQuery')),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(),
              GestureDetector(
                onTap: () {
                  log("height = $height");
                  log("width = $width");
                  log("orientation: ${MediaQuery.orientationOf(context)}");
                  log("padding top: ${MediaQuery.paddingOf(context).top}");
                  MediaQuery.of(context).viewInsets.bottom;
                  log(
                    "view insets bottom: ${MediaQuery.viewInsetsOf(context).bottom}",
                  );
                },
                child: Container(
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
              ),
              Spacer(),
              // SizedBox(height: 500),
              CustomWidget(index: 0),
            ],
          ),
        ),
      ),
    );
  }
}
