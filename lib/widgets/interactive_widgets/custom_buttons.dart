import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_images.dart';

class MyCustomButtonScreen extends StatelessWidget {
  const MyCustomButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CustomButton Screen')),
      body: CustomPageView(
        onCustomPageChanged: (index) {
          print(index);
        },
        builder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(AppImages.garden2),
          );
        },
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onClick,
    this.backgroundColor = Colors.red,
  });

  final String text;
  final void Function()? onClick; //Call back
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
      ),
      onPressed: onClick,
      child: Text(text),
    );
  }
}

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.onCustomPageChanged,
    required this.builder,
  });

  final void Function(int index) onCustomPageChanged;

  final Widget Function(BuildContext context, int index) builder;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (index) {
        print("index:");
        onCustomPageChanged(index);
      },
      itemBuilder: builder,
    );
  }
}

///TextButton
///PageView, ListView, GridView
///Custom RetrunType Function(<Parameters>) name;
/// void Function() onClick
/// void Function(int index) onPageChanged
/// Widget Function(BuildContext context, int index) builder
