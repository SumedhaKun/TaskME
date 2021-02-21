import 'package:cohacks_app/homePage.dart';
import 'package:flutter/material.dart';
import 'textInput.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Register', style: TextStyle(fontFamily: 'RocknRoll'),), backgroundColor: Color(0xff7CDBD5),),
      body: Column(
        children: [
          TextInput(hintText: 'Email:', obscureText: false,),
          TextInput(hintText: 'Name:', obscureText: false,),
          TextInput(hintText: 'Username', obscureText: false,),
          TextInput(hintText: 'Password', obscureText: true,),
          TextInput(hintText: 'Confirm Password', obscureText: true,),
          Builder(
            builder: (context) => OutlineButton(
              hoverColor: Color(0xffE6E6FA),
              highlightColor: Color(0xffE6E6FA),
              highlightedBorderColor: Color(0xffB57EDC),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()));
              },
              child: Text('Register!', style: TextStyle(
                color: Color(0xffB57EDC), fontFamily: 'RocknRoll',
              ),),
            ),
          ),
          OutlineButton(
            hoverColor: Color(0xffE6E6FA),
            highlightColor: Color(0xffE6E6FA),
            highlightedBorderColor: Color(0xffB57EDC),
            child: Text('Back', style: TextStyle(color: Color(0xffB57EDC), fontFamily: 'RocknRoll')),
            onPressed: (){
             Navigator.pop(context);
            },
          ),
        ],
      ),
      ),
    );
  }
}
