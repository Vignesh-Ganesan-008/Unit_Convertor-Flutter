import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hintText;
  TextEditingController controller;

  CustomTextField(this.hintText, this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 250,
        child: TextField(
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.tealAccent),
              labelStyle: TextStyle(color: Color.fromRGBO(181, 126, 220, 1)),
              hintText: hintText,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(181, 126, 220, 1)),
              )),
          cursorColor: Colors.tealAccent,
          cursorWidth: 4,
          cursorRadius: Radius.circular(4),
          controller: controller,
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}