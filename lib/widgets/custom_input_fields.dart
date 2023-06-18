import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget{

  final Function(String) onSaved;
  // final String regEx;
  final String hintText;
  final bool obscureText;

  const CustomTextFormField({
    required this.onSaved,
    // required this.regEx,
    required this.hintText,
    required this.obscureText,
});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (_value) => onSaved(_value!),
      cursorColor: Colors.black54,
      style: TextStyle(color: Colors.black54),
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.grey[400],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
          hintText: hintText,
        hintStyle: TextStyle(color: Colors.black45),
      ),
      // validator: (_value){
      //   return RegE
      // },
    );
  }

}