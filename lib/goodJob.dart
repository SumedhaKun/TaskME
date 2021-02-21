import 'package:flutter/material.dart';
import 'homePage.dart';
import 'main.dart';
class GoodJob extends StatelessWidget {
  GoodJob({this.counter});
  final counter;
  var endText=Text('');
  var image;
  Text returnText(){
    endText=Text("Great job. You have done "+ counter.toString()+" tasks.", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'RocknRoll', fontSize: 30.0, color: Color(0xff02075D)),);
    print(endText);
    return(endText);
  }
  Widget returnImage(){
    image=Image.asset('assets/images/party.png', height: 200.0,);
    return image;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff7CDBD5),
        ),
        body: Column(

          children: [
            SizedBox(height: 100.0,),
            Text('GOOD JOB!', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'RocknRoll', fontSize: 40.0, color: Color(0xff02075D)),),
            SizedBox(
              height: 30.0,
            ),
            Text('Do you want to complete another task?',style: TextStyle(fontFamily: 'RocknRoll', fontSize: 20.0, color: Color(0xff02075D)),),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Color(0xffB57EDC),
                  child: Text("That's enough for today", style: TextStyle(fontFamily: 'RocknRoll', fontSize: 15.0, color: Colors.white)),
                  onPressed: (){
                    returnText();
                    returnImage();
                    Navigator.push(context,
    MaterialPageRoute(
    builder: (context) => MyApp()));
    },
                ),
                SizedBox(width: 10.0,),
                RaisedButton(
                  color: Color(0xffB57EDC),
                  child: Text("Yes! Another one!", style: TextStyle(fontFamily: 'RocknRoll', fontSize: 15.0, color: Colors.white)),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),

              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Column(
              children: [
                returnText(),
                SizedBox(
                  height: 30.0,
                ),
                returnImage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
