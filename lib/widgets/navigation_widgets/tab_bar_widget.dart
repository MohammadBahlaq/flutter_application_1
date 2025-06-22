import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: Duration(seconds: 1),
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar widget'),
          bottom: TabBar(
            // physics: NeverScrollableScrollPhysics(),
            labelColor: Colors.red,
            unselectedLabelColor: Colors.amber,
            indicatorColor: Colors.red,
            dividerColor: Colors.black,
            dividerHeight: 3,
            isScrollable: false,
            splashBorderRadius: BorderRadius.circular(15),
            // indicator: BoxDecoration(
            //   color: Colors.black,
            //   borderRadius: BorderRadius.circular(15),
            //   border: Border.all(color: Colors.red, width: 3),
            // ),
            indicatorWeight: 10,
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: (index) {
              print(index);
            },
            tabs: [
              Tab(
                text: 'Home',
                icon: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.add),
                ),
              ),
              Tab(text: 'Profile'),
              Tab(text: 'Add'),
            ],
          ),
        ),
        body: Column(
          children: [
            Text('My Tabs', style: TextStyle(fontSize: 30)),
            TabBar(
              // physics: NeverScrollableScrollPhysics(),
              labelColor: Colors.red,
              unselectedLabelColor: Colors.amber,
              indicatorColor: Colors.red,
              dividerColor: Colors.black,
              dividerHeight: 3,
              isScrollable: false,
              splashBorderRadius: BorderRadius.circular(15),
              // indicator: BoxDecoration(
              //   color: Colors.black,
              //   borderRadius: BorderRadius.circular(15),
              //   border: Border.all(color: Colors.red, width: 3),
              // ),
              indicatorWeight: 10,
              indicatorSize: TabBarIndicatorSize.tab,
              onTap: (index) {
                print(index);
              },
              tabs: [
                Tab(
                  text: 'Home',
                  icon: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.add),
                  ),
                ),
                Tab(text: 'Profile'),
                Tab(text: 'Add'),
              ],
            ),
            Expanded(
              child: TabBarView(
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  Container(color: Colors.red),
                  Container(color: Colors.blue),
                  Container(color: Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // return DefaultTabController(
    //   child: Scaffold(
    //     appBar: AppBar(
    //       bottom: TabBar(
    //         tabs: [
    //           Tab(
    //             text: 'Tab 1',
    //             icon: Icon(Icons.add),
    //             height: 100,
    //             iconMargin: EdgeInsets.all(0),
    //           ),
    //           Tab(text: 'Tab 2', icon: Icon(Icons.add)),
    //           Tab(text: 'Tab 3', icon: Icon(Icons.add)),
    //           Tab(text: 'Tab 4', icon: Icon(Icons.add)),
    //           Tab(text: 'Tab 5', icon: Icon(Icons.add)),
    //           Tab(text: 'Tab 6', icon: Icon(Icons.add)),
    //         ],
    //       ),
    //     ),
    //     body: Column(
    //       children: [
    //         Text('My Tabs', style: TextStyle(fontSize: 30)),
    //         Expanded(
    //           child: TabBarView(
    //             physics: BouncingScrollPhysics(),
    //             children: [
    //               Container(
    //                 color: Colors.blue,
    //                 alignment: Alignment.center,
    //                 child: Text('Tab 1', style: TextStyle(fontSize: 30)),
    //               ),
    //               Container(
    //                 color: Colors.red,
    //                 alignment: Alignment.center,
    //                 child: Text('Tab 2', style: TextStyle(fontSize: 30)),
    //               ),
    //               Container(
    //                 color: Colors.green,
    //                 alignment: Alignment.center,
    //                 child: Text('Tab 3', style: TextStyle(fontSize: 30)),
    //               ),
    //               Container(
    //                 color: Colors.yellow,
    //                 alignment: Alignment.center,
    //                 child: Text('Tab 4', style: TextStyle(fontSize: 30)),
    //               ),
    //               Container(
    //                 color: Colors.purple,
    //                 alignment: Alignment.center,
    //                 child: Text('Tab 5', style: TextStyle(fontSize: 30)),
    //               ),
    //               Container(
    //                 color: Colors.brown,
    //                 alignment: Alignment.center,
    //                 child: Text('Tab 6', style: TextStyle(fontSize: 30)),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
