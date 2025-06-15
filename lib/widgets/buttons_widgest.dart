import 'package:flutter/material.dart';

class ButtonsWidgets extends StatelessWidget {
  const ButtonsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Buttons & BottomAppBar"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        notchMargin: 9,
        shape: CircularNotchedRectangle(),
        // padding: EdgeInsets.all(60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: Icon(Icons.language)),
            IconButton(
              onPressed: () {
                print("onPressed");
              },
              icon: Icon(Icons.person),
              color: Colors.red,
              onLongPress: () {
                print("onLongPress");
              },
              iconSize: 35,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FloatingActionButton");
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 20,

        ///Floating button but small
        mini: false,
        splashColor: Colors.red,
        tooltip: "Add",

        ///If you want to give floating button circle shape
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tooltip(
              ///If you want to show message onLongPress
              message: "ElevatedButton",
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  // padding: EdgeInsets.symmetric(horizontal: 40),
                  // fixedSize: Size(100, 60),
                  fixedSize: Size.fromWidth(100),
                  // fixedSize: Size.fromHeight(100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.zero,

                  ///Color for shadow that appears when you click on the button
                  ///and disappear fast
                  shadowColor: Colors.blue,
                ),
                onPressed: () {
                  print("Login");
                },
                label: Text('Login'),
                icon: Icon(Icons.login),
              ),
            ),
            // ElevatedButton(onPressed: () {}, child: Text('Signup')),
          ],
        ),
      ),
    );
  }
}
