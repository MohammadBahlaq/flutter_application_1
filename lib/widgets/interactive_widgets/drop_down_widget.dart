import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  final List<DropdownMenuEntry> list = const [
    DropdownMenuEntry(value: 'Jordan value', label: 'Jordan'),
    DropdownMenuEntry(value: 'Emarate value', label: 'Emarate'),
    DropdownMenuEntry(value: 'Saudi value', label: 'Saudi'),
    DropdownMenuEntry(value: 'Qwet value', label: 'Qwet'),
    DropdownMenuEntry(value: 'USA value', label: 'USA'),
    DropdownMenuEntry(value: 'Iran value', label: 'Iran'),
    DropdownMenuEntry(value: 'Suria value', label: 'Suria'),
    DropdownMenuEntry(value: 'Egypt value', label: 'Egypt'),
    DropdownMenuEntry(value: 'Tunis value', label: 'Tunis'),
    DropdownMenuEntry(value: 'Pelestaine value', label: 'Pelestaine'),
    DropdownMenuEntry(value: 'Yemen value', label: 'Yemen'),
    DropdownMenuEntry(value: 'Iraq value', label: 'Iraq'),
    DropdownMenuEntry(value: 'Kinda value', label: 'Kinda'),
    DropdownMenuEntry(value: 'UK value', label: 'UK'),
    // DropdownMenuEntry(
    //   value: 'JD',
    //   label: 'Jordan',
    //   enabled: true,
    //   leadingIcon: Icon(Icons.golf_course),
    //   trailingIcon: Icon(Icons.abc),
    //   style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text('Dropdown widget')),
      body: Center(
        child: Column(
          children: [
            // ElevatedButton(
            //   style: ButtonStyle(
            //     backgroundColor: WidgetStateProperty.fromMap({
            //       WidgetState.selected: Colors.red,
            //       WidgetState.hovered: Colors.green,
            //     }),
            //   ),
            //   onPressed: () {},
            //   child: Text('data'),
            // ),
            SizedBox(height: 20),
            DropdownMenu(
              dropdownMenuEntries: list,
              requestFocusOnTap: true,
              enableSearch: true,
              enableFilter: true,
              menuHeight: 300,
              width: 300,
              enabled: true,
              // hintText: 'Select country',
              label: Text('Select country'),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-z]')),
              ],
              keyboardType: TextInputType.name,
              leadingIcon: Icon(Icons.abc),
              selectedTrailingIcon: Icon(Icons.remove),
              trailingIcon: Icon(Icons.add),
              textStyle: TextStyle(color: Colors.red),
              menuStyle: MenuStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                elevation: WidgetStatePropertyAll(50),
                shadowColor: WidgetStatePropertyAll(Colors.red),
                padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              onSelected: (value) {
                print(value);
              },
            ),

            // DropdownMenu(
            //   dropdownMenuEntries: list,
            //   enableFilter: true,
            //   requestFocusOnTap: true,
            //   enableSearch: true,
            //   helperText: 'helperText',
            //   hintText: 'hintText',
            //   width: 300,
            //   menuHeight: 200,
            //   // initialSelection: "Jordan",
            //   label: Text('select country'),
            //   leadingIcon: Icon(Icons.shopping_bag),
            //   trailingIcon: Icon(Icons.add),
            //   selectedTrailingIcon: Icon(Icons.remove),
            //   textStyle: TextStyle(fontSize: 30),
            //   enabled: true,
            //   menuStyle: MenuStyle(
            //     alignment: Alignment.bottomLeft,
            //     backgroundColor: WidgetStatePropertyAll(Colors.red),
            //     elevation: WidgetStatePropertyAll(50),
            //     shadowColor: WidgetStatePropertyAll(Colors.blue),
            //     shape: WidgetStatePropertyAll(
            //       RoundedRectangleBorder(
            //         borderRadius: BorderRadiusGeometry.circular(25),
            //       ),
            //     ),
            //   ),
            //   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            //   onSelected: (value) {
            //     print(value);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
