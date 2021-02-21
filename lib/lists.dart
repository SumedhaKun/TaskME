import "dart:math";

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String indoor() {

  var indoor = [
    'Play chess (with someone or online)',
    'Play a fun board game with your family',
    'Paint a Bob Ross Painting',
    'Dance for 15 mins to your favorite songs',
    'Tie-Dye to your t-shirt',
    'Solve a 100 piece puzzle',
    'Make dinner for your family',
    'Read your favorite book for 20 minutes',
    'Watch a movie with your friends (via zoom)',
    'Make a lego house with your lego friends :)',
    ' Do something you love for 30 minutes '
  ];
  var element = getRandomElement(indoor);
  return element;
}

String outdoor() {

  var indoor = [
    'Go take a walk in nature', 'Take photos, have a fun photoshoot', 'Ride your bike', 'Go to your local park','Have a chalk art competition with your family','Go to the park and have a fun picnic with your friends','Go rollerblading','Do yoga in your backyard','Go outside and do a 15-minute intense cardio workout'
  ];
  var element = getRandomElement(indoor);
  return element;
}
String sports() {

  var indoor = [
    'Play basketball with someone, make 10 shots', 'Play Tennis, play a game with your friend', 'Go running for 15 mins', 'Play kickball with your friends','Go biking for 30 minutes','Go rock climbing','Go rollerblading','Plant a tree in your backyard', 'Go hiking with your friends'
  ];
  var element = getRandomElement(indoor);
  return element;
}
String challenge() {

  var indoor = [
    'Flip a water bottle and land it 5 times in a row', 'Ice bucket challenge', 'Eating A Sour Lemon Without Any Expressions Challenge','Play Truth or Dare with your friends','Eat A Cake With The Hands Tied Back','Try a hard yoga pose','Call one of your parents and ask them to Sing A Nursery Rhyme And Hang Up Without An Explanation','Making A Sandwich With Hands Tied Behind Your Back Challenge', 'Do a 100- layer challenge ', 'Chubby Bunny Challenge'
  ];
  var element = getRandomElement(indoor);
  return element;
}

String education() {

  var indoor = [
    'Study for 30 minutes without breaks', 'Meditate for 5 minutes', 'Make a study guide for your next test','Research about one thing you are interested in','Write a creative story','Learn how to code (maybe try block coding)','Play a fun educational game','Tutor someone who needs help', 'Learn one interesting fact', 'Do a crossword puzzle'
  ];
  var element = getRandomElement(indoor);
  return element;
}
T getRandomElement<T>(List<T> indoor) {
  final random = new Random();
  var i = random.nextInt(indoor.length);
  return indoor[i];
}

List<Widget> categories=[
  Text('Education', style: TextStyle(fontFamily: 'RocknRoll'),),
  Text('Challenges', style: TextStyle(fontFamily: 'RocknRoll'),),
  Text('Sports', style: TextStyle(fontFamily: 'RocknRoll'),),
  Text('Outdoor Activities', style: TextStyle(fontFamily: 'RocknRoll'),),
  Text('Indoor Activities', style: TextStyle(fontFamily: 'RocknRoll'),)
];

List<Text> quotes=[
  Text('"All our dreams can be true if we have the courage to pursue them"-Walt Disney',textAlign: TextAlign.center, style: TextStyle(fontFamily: 'RocknRoll', color: Color(0xff02075D)),),
  Text("\"Work hard, be kind, and amazing things will happen\"-Connan O'Brian", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'RocknRoll', color: Color(0xff02075D)),),
  Text("\"Don't limit your challenges. Challenge your limits.\"-Unknown", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'RocknRoll', color: Color(0xff02075D)),),
  Text("\"Today is opporunity to build the tomorrow you want.\"-Ken Poirot", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'RocknRoll', color: Color(0xff02075D)),),
  Text('"If you want to fly, give up everything that weighs you down."-Buddha', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'RocknRoll', color: Color(0xff02075D)),),
];