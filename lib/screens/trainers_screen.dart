import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrainersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 1, 35, 1),
        title: Text('Entrenadores Pokemon'),
      ),
      body: Text('Aquí van los entrenadores'), //TODO Add all the trainers
    );
  }
}
