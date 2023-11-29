// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  String? hintText;
  int? maxlines;
  bool? ispassword;
  Widget? icon;
  TextInputAction? inputAction;
  TextEditingController? controller;
  FocusNode? focusNode;
  String Function(String?)? validate;
  String? Function(String?)? validator;
  MyTextFormField(
      {
      Key? key,
      this.hintText,
      this.controller,
      this.focusNode,
      this.validate,
      this.validator,
      this.ispassword=false,
      this.maxlines,
      this.icon,
      this.inputAction})
      : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  
  bool visibility=false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        validator: (v) {
          if (v!.isEmpty) {
            return "Empty Fields not allowed";
          }
          return null;
        },
        focusNode: widget.focusNode,
        textInputAction: widget.inputAction,
        obscureText: widget.ispassword! && visibility==false?true:false,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: widget.icon,
            suffixIcon: widget.ispassword==true?  IconButton(
              onPressed: (){
              setState(() {
                visibility=!visibility;
              });
              },
              icon:Icon(visibility?Icons.visibility_off: Icons.remove_red_eye_sharp) ):null,
            hintText: widget.hintText ?? "hint text",
            ),
    );
  }
}