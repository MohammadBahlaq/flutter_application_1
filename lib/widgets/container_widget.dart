import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Widget")),
      body: Center(
        //put any widget at the center of it's parent
        child: Container(
          //Contain any widget to draw a decoration around it
          height: 100,
          width: 100,
          //alignment for the Container's content
          alignment: Alignment.center,
          //all decoration for the Container like: border, color, raduis and so on...
          decoration: BoxDecoration(
            color: Colors.red,
            // border: Border.all(color: Colors.green, width: 7),
            border: Border(
              bottom: BorderSide(color: Colors.green, width: 7),
              top: BorderSide(color: Colors.blue, width: 7),
              left: BorderSide(color: Colors.black, width: 7),
              right: BorderSide(color: Colors.yellow, width: 7),
            ),
          ),
        ),
      ),
    );
  }
}
