import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/navigation_widgets/navigation.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;

  ///padding: Padding
  ///tooltip: Tooltip
  ///alignment: Align
  ///radius: ClipRRect

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            elevation: 0,
            selectedItemColor: Colors.red,
            selectedLabelStyle: TextStyle(),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedLabelStyle: TextStyle(),
            unselectedItemColor: Colors.blue,
            currentIndex: selectedIndex,
            backgroundColor: Colors.amber,
            type: BottomNavigationBarType.shifting,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.yellow,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add',
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
      body: _body(),
    );

    // return Scaffold(
    //   bottomNavigationBar: Padding(
    //     padding: const EdgeInsets.all(10),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(15),
    //       child: BottomNavigationBar(
    //         elevation: 50,

    //         items: [
    //           BottomNavigationBarItem(
    //             icon: Icon(Icons.add),
    //             label: 'Add',
    //             backgroundColor: Colors.blue,
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(Icons.person),
    //             label: 'Profile',
    //             backgroundColor: Colors.purple,
    //           ),
    //           BottomNavigationBarItem(
    //             icon: Icon(Icons.home),
    //             label: 'Home',
    //             backgroundColor: Colors.orange,
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   body: _body(),
    // );
  }

  Widget _body() {
    switch (selectedIndex) {
      case 0:
        return PageOne();
      case 1:
        return PageTwo();
      case 2:
        return PageThree();
      default:
        return SizedBox();
    }
  }

  // Widget _body() {
  //   switch (selectedIndex) {
  //     case 0:
  //       return PageOne();
  //     case 1:
  //       return PageTwo();
  //     case 2:
  //       return PageThree();
  //     default:
  //       return SizedBox();
  //   }
  // }
}
