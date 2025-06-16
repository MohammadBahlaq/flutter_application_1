import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          //Contain any widget to draw a decoration around it
          height: 480,
          width: 400,
          //If you want to take a space from outside the Container
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          //If you want to take a space from inside the Container
          padding: EdgeInsets.only(top: 30, right: 30),
          //alignment for the Container's content
          alignment: Alignment.center,
          //all decoration for the Container like: border, color, raduis and so on...
          decoration: BoxDecoration(
            color: Colors.red,
            //to give the Container Gradient
            gradient: LinearGradient(
              colors: [Colors.red, Colors.purple],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            border: Border.all(color: Colors.blue, width: 7),
            //To set raduis for Container
            borderRadius: BorderRadius.circular(50),

            //if you want to make the Container rectangle or circle
            // shape: BoxShape.rectangle,

            //If you want shadow for Container you can use it
            boxShadow: [
              BoxShadow(blurRadius: 50, spreadRadius: 10, color: Colors.blue),
              BoxShadow(blurRadius: 30, spreadRadius: 1, color: Colors.black),
              BoxShadow(blurRadius: 50, spreadRadius: 10, color: Colors.red),
            ],

            image: DecorationImage(
              image: AssetImage("assets/images/download.jpg"),
              fit: BoxFit.none,
            ),
            // image: DecorationImage(
            //   image: NetworkImage(
            //     "https://www.bhg.com/thmb/NH1GNLelBIaF3dSqp_jR3-S61Ww=/1100x0/filters:no_upscale():strip_icc()/garden-path-leading-underneath-trellis-roses-ccab4820-bf659328e5044d0ba639f1c48c3ab66a.jpg",
            //   ),
            //   fit: BoxFit.scaleDown,
            // ),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     Container(height: 100, width: 100, color: Colors.blue),
          //     //If you want to take a space from any side between widgets
          //     SizedBox(height: 10),
          //     Container(height: 100, width: 100, color: Colors.blue),
          //     SizedBox(height: 10),
          //     Container(height: 100, width: 100, color: Colors.blue),
          //   ],
          // ),
        ),
      ),
    );
  }
}
