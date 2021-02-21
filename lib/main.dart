import 'package:flutter/material.dart';
import 'homePage.dart';
import 'register.dart';
import 'textInput.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.white,
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(70.0),
    child: AppBar(

    backgroundColor: Color(0xff7CDBD5),

            title: Text('TaskME', style: TextStyle(
              fontFamily: 'RocknRoll', fontSize: 30.0,
            ),
            ),
          ),
        ),
        body: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 30.0,),
                TextInput(hintText: 'Username', obscureText: false,),
                TextInput(hintText: 'Password', obscureText: true,),
                Builder(
                  builder: (context) => OutlineButton(
                    hoverColor: Color(0xffE6E6FA),
                    highlightColor: Color(0xffE6E6FA),
                    highlightedBorderColor: Color(0xffB57EDC),

                    splashColor: Colors.black,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => HomePage()));
                    },
                    child: Text('Login', style: TextStyle(
                      color: Color(0xffB57EDC), fontFamily: 'RocknRoll',
                    ),),
                  ),
                ),
                Builder(
                  builder: (context) => OutlineButton(
                    hoverColor: Color(0xffE6E6FA),
                    highlightColor: Color(0xffE6E6FA),
                    highlightedBorderColor: Color(0xffB57EDC),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Register()));
                    },
                    child: Text('Create an account', style: TextStyle(
                      color: Color(0xffB57EDC), fontFamily: 'RocknRoll',
                    ),),
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}


