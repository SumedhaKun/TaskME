import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'lists.dart';
import 'goodJob.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var category=Text('Education');
  var function=education();
  var quote;
  bool checkBoxValue=false;
  var counter=0;

  String task = '';
  void doFunction(){
    String gotTask=function;
    setState(() { task = gotTask; });
  }
  void updateQuote(){
    quote=getRandomElement(quotes);
  }
void updateListName(category){
    setState(() {
      if(category.data=='Education'){
        function=education();
      }
      if(category.data=='Challenges'){
        function=challenge();
      }
      if(category.data=='Sports'){
        function= sports();
      }
      if(category.data=="Outdoor Activities"){
        function= outdoor();
      }
      if(category.data=='Indoor Activities'){
        function= indoor();
      }
    });
}
void checkTheBox(){
    if(checkBoxValue==true){
      counter+=1;
    }
    checkBoxValue=false;
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => GoodJob(counter: counter,)));
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateListName(category);
    updateQuote();
  }
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff7CDBD5),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(height: 10.0,),
              Text('Choose a category', style: TextStyle(fontSize: 30.0, fontFamily: 'RocknRoll', color: Color(0xff02075D)),),
              SizedBox(height: 10.0,),
              CupertinoPicker(

                onSelectedItemChanged: (selectedIndex){
                  setState(() {
                    category=categories[selectedIndex];
                    print(category);
                    updateListName(category);
                  });
                },
                itemExtent: 30.0,
                children: categories,
              ),
              SizedBox(height: 30.0,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(

                    color: Color(0xffE6E6FA),
                    child: Text(task, textAlign: TextAlign.center,style: TextStyle(fontSize: 30.0, ),),
                  ),
                ],
              ),
              Checkbox(
                activeColor: Color(0xffB57EDC),
                value: checkBoxValue,
                onChanged: (bool value){
                  setState(() {
                    checkBoxValue=value;
                    checkTheBox();


                  });
                },
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 125.0,
                    child: RaisedButton(
                      color: Color(0xffB57EDC),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text('Back', style: TextStyle(color: Colors.white, fontFamily: 'RocknRoll'),),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      color: Color(0xffB57EDC),
                      onPressed: (){
                          doFunction();
                      },
                      child: Text('Generate task',style: TextStyle(fontFamily: 'RocknRoll', color: Colors.white),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100.0,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(18.0),
                  color: Color(0xff7CDBD5),


                  child: Align(alignment: Alignment.center,child: quote)
                ),
              ),


            ],
          )
        ),
      ),
    );
  }
}

