my code


import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ball Shuffling',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String ballShowImage="assets/ball4.png";

void chnageBallImage(){


}

setState((){

int randomNumber= Random().nextInt(5)+1;
print(randomNumber);
"assets/ball$randomNumber.png";
});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: const [
        Center(
          child: Text ("Ask Me Anything",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
            fontSize: 25,
            
          ),),
        ),
        
       ],
  
),




    );
  }
}

