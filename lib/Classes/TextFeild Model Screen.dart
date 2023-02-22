import 'package:flutter/material.dart';

class TextFieldModel extends StatefulWidget {
   TextFieldModel({Key? key,required this.name,required this.controller
   }) : super(key: key);
   String name;
   TextEditingController controller;

  @override
  State<TextFieldModel> createState() => _TextFieldModelState();
}

class _TextFieldModelState extends State<TextFieldModel> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.name,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
          ),
        ),
        Container(
          height: 30,
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.white,
              filled: true,
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent)),
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.blueAccent, width: 3),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.black87, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
