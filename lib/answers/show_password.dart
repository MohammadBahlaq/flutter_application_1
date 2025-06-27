import 'package:flutter/material.dart';

class ShowPassword extends StatefulWidget {
  const ShowPassword({super.key});

  @override
  State<ShowPassword> createState() => _ShowPasswordState();
}

class _ShowPasswordState extends State<ShowPassword> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Show password example')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextFormField(
            obscureText: show,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  show = !show;
                  setState(() {});
                },
                icon: Icon(show ? Icons.visibility_off : Icons.visibility),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
