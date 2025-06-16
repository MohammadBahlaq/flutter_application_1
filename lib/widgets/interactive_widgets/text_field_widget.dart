import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  ///ValueKey()
  ///ObjectKey()
  ///UniqueKey()
  ///Local Key

  // GlobalKey<FormState> formKey = GlobalKey<FormState>();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField widget'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                onSaved: (newValue) {
                  print("onSaved1");
                },
                validator: (value) {
                  if ((value ?? '').isEmpty) return 'Null text';

                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                onSaved: (newValue) {
                  print("onSaved2");
                },
                validator: (value) {
                  if ((value ?? '').length < 8) return 'less than 8';

                  return null;
                },
              ),

              TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print("Signup");
                  }
                  // formKey.currentState!.save();
                },
                child: Text("Submit"),
              ),
              // TextFormField(
              //   key: UniqueKey(),
              //   keyboardType: TextInputType.emailAddress,
              //   autofocus: true,
              //   cursorColor: Colors.red,
              //   enabled: true,
              //   readOnly: false,
              //   obscureText: false,
              //   inputFormatters: [
              //     // FilteringTextInputFormatter.digitsOnly,
              //     // LengthLimitvingTextInputFormatter(10),
              //     // FilteringTextInputFormatter.deny(RegExp('[A-Z]')),
              //     // FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              //   ],
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     filled: true,
              //     fillColor: Colors.grey[200],
              //     // enabledBorder: ,
              //     // errorBorder: ,
              //     // focusedBorder: ,
              //     // disabledBorder: ,
              //     // focusedErrorBorder: ,
              //     prefixIcon: Icon(Icons.email),
              //     suffixIcon: Icon(Icons.search),
              //     // label: Text('data',style: TextStyle(),),
              //     labelText: 'Email',
              //     // labelStyle: ,
              //     // hintText: 'Email',
              //   ),
              //   onChanged: (value) {
              //     print('TF=> onChanged: $value');
              //   },
              //   onFieldSubmitted: (value) {
              //     print('TF=> onFieldSubmitted: $value');
              //   },
              //   onTap: () {
              //     print('TF=> onTap');
              //   },
              //   autovalidateMode: AutovalidateMode.onUnfocus,
              //   validator: (value) {
              //     value ??= '';
              //     print("validator");
              //     if (value.isEmpty) {
              //       return 'please enter phone number';
              //     } else if (value.length < 10) {
              //       return 'please complete phone number';
              //     }
              //     return null;
              //   },
              //   onSaved: (newValue) {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
