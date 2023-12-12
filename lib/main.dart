import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 20, color: Colors.black),
          headline2: TextStyle(
              fontSize: 25, color: const Color.fromARGB(255, 247, 0, 0)),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Styles',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(
            'Hi, this is a test text',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 20),
          Text(
            'This is another text widget',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
