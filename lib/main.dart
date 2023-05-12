import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ball Shuffling',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ballShowImage = "assets/ball4.png";

  void changeBallImage() {
    int randomNumber = Random().nextInt(5) + 1;
    setState(() {
      ballShowImage = "assets/ball$randomNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ball Shuffling") ,
        centerTitle: true,
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            
            child: Text(
              "Ask Me Anything",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(height: 20), //distance b/w ball and ask me ..
          Center(
            child: Image.asset(
              ballShowImage,
              height: 300,
            ),
          ),

          const SizedBox(height: 20), //distance b/w image and button
          ElevatedButton(
            onPressed: changeBallImage,
            child: Text('Shuffle Ball'),

            //an ElevatedButton widget is used to create a button
            // that calls the changeBallImage() function when pressed. 
            

          ),
        ],
      ),
    );
  }
}
