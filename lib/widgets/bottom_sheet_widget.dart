import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  DraggableScrollableController dragController =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Show methods')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Bottom Sheet'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.red,
                  isDismissible: true,
                  isScrollControlled: true,
                  enableDrag: true,
                  barrierColor: Colors.black.withAlpha(100),
                  // constraints: BoxConstraints(maxHeight: 300, minHeight: 200),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                  ),
                  useSafeArea: false,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      controller: dragController,
                      maxChildSize: 1,
                      minChildSize: 0.5,
                      expand: false,
                      // initialChildSize: 0.4,
                      builder: (context, scrollController) {
                        return MyListView(
                          scrollController: scrollController,
                          dragController: dragController,
                        );
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyListView extends StatefulWidget {
  const MyListView({
    super.key,
    required this.scrollController,
    required this.dragController,
  });

  final ScrollController scrollController;
  final DraggableScrollableController dragController;

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  void initState() {
    widget.scrollController.addListener(() {
      final height = MediaQuery.sizeOf(context).height;

      if (widget.dragController.pixels == height) {
        if (widget.scrollController.position.axisDirection ==
            AxisDirection.down) {
          widget.dragController.animateTo(
            0.51,
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        }
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: widget.scrollController,
      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
      itemCount: 15,
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemBuilder: (context, index) {
        return Container(
          height: 80,
          width: double.infinity,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text('$index', style: TextStyle(fontSize: 25)),
        );
      },
    );
  }
}
