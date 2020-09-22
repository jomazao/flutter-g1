import 'package:example_app/screens/details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailsScreen(),
    );
  }
}

/*Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'App de juegos',
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text(
            'HOLA MUNDO!!!',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 50,
              backgroundColor: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),*/
