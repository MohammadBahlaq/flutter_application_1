import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/scrollable_layout_widgets/list_view_widget.dart';

class ShowMethods extends StatelessWidget {
  const ShowMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (canPop, result) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return MyDialog();
          },
        );
      },
      child: Scaffold(
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
                    barrierColor: Colors.black.withAlpha(100),
                    // constraints: BoxConstraints(maxHeight: 300, minHeight: 200),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                    ),
                    useSafeArea: true,
                    builder: (context) {
                      return MyListView();
                    },
                  );
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Show Dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.red,
                    useSafeArea: true,
                    builder: (context) {
                      return MyDialog();
                    },
                  );
                  // showDialog(
                  //   context: context,
                  //   builder: (_) => MyDialog(),
                  //   barrierDismissible: false,
                  // );
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Show snackBar'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 4),
                      content: Text('Login Success'),
                      backgroundColor: Colors.red,
                      // width: 300,
                      behavior: SnackBarBehavior.floating,
                      padding: EdgeInsets.all(50),
                      // showCloseIcon: true,
                      shape: StadiumBorder(),
                      elevation: 50,
                      action: SnackBarAction(
                        label: 'Ok',
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        },
                      ),
                      margin: EdgeInsets.only(bottom: 100),
                      onVisible: () {
                        print('onVisible');
                      },
                    ),
                  );

                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text('Login Success'),
                  //     showCloseIcon: true,
                  //     closeIconColor: Colors.red,
                  //     margin: EdgeInsets.only(right: 10, left: 10, bottom: 100),
                  //     shape: StadiumBorder(),
                  //     action: SnackBarAction(
                  //       label: "Ok",
                  //       onPressed: () {
                  //         ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  //       },
                  //     ),
                  //   ),
                  // );
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Show materialBanner'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showMaterialBanner(
                    MaterialBanner(
                      content: Text('Login Success'),
                      backgroundColor: Colors.red,
                      dividerColor: Colors.black,
                      onVisible: () {
                        print("onVisible");
                      },
                      leading: Icon(Icons.login),
                      margin: EdgeInsets.all(20),
                      elevation: 50,
                      shadowColor: Colors.blue,
                      minActionBarHeight: 100,
                      padding: EdgeInsets.all(20),
                      actions: [
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(
                              context,
                            ).hideCurrentMaterialBanner();
                          },
                          icon: Icon(Icons.close),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    ///Padding
    ///Align
    ///Tooltip
    return PopScope(
      canPop: false,
      child: AlertDialog.adaptive(
        scrollable: true,
        title: Align(alignment: Alignment.topLeft, child: Text('Title')),
        backgroundColor: Colors.white,
        alignment: Alignment.center,
        actionsAlignment: MainAxisAlignment.end,
        // actionsPadding: EdgeInsets.zero,
        icon: Align(
          alignment: AlignmentDirectional.topStart,
          child: CloseButton(),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Chancle'),
          ),
          TextButton(
            onPressed: () {
              exit(0);
            },
            child: Text('Ok'),
          ),
        ],
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Do you want to leave?', style: TextStyle(fontSize: 18)),
            ...List.generate(15, (index) => CustomWidget(index: index)),
          ],
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      maxChildSize: 1,
      minChildSize: 0.5,
      expand: false,
      // initialChildSize: 0.4,
      builder: (context, scrollController) {
        return ListView.separated(
          controller: scrollController,
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
      },
    );
  }
}
