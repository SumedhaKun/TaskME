import 'package:flutter/material.dart';
class TextInput extends StatelessWidget {

  TextInput({this.hintText, this.obscureText});
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0,),
      child: TextField(
        style: TextStyle(
          color: Color(0xff02075D), fontFamily: 'RocknRoll',
        ),
        onChanged: (value){
          print(value);
        },
        obscureText: obscureText,
        decoration: InputDecoration(
          hoverColor: Color(0xff02075D),
            focusColor: Color(0xff02075D),
            fillColor: Color(0xff02075D),


            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)

            )
        ),
      ),
    );
  }
}