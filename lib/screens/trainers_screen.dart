import 'package:example_app/models/trainer.dart';
import 'package:example_app/widgets/trainer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrainersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var trainer1 = Trainer(
      name: 'Victor',
      photoUrl:
          'https://vignette.wikia.nocookie.net/pokemon/images/b/b8/Sword_%26_Shield_Male_Trainer.png/revision/latest/scale-to-width-down/430?cb=20200731134714',
      gender: 'Male',
    );
    var trainer2 = Trainer(
      name: 'Elaine',
      photoUrl:
          'https://vignette.wikia.nocookie.net/pokemon/images/0/04/Lets_Go_Pikachu_Eevee_Female_Trainer.png/revision/latest/scale-to-width-down/700?cb=20200627084627',
      gender: 'Female',
    );
    var trainer3 = Trainer(
      name: 'Kris',
      photoUrl:
          'https://vignette.wikia.nocookie.net/pokemon/images/e/e1/Crystal_Kris.png/revision/latest/scale-to-width-down/564?cb=20151010072014',
      gender: 'Female',
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 1, 35, 1),
        title: Text('Entrenadores Pokemon'),
      ),
      body: ListView(
        children: [
          TrainerWidget(
            trainer: trainer1,
          ),
          TrainerWidget(
            trainer: trainer2,
          ),
          TrainerWidget(
            trainer: trainer3,
          ),
        ],
      ), //TODO Add all the trainers
    );
  }
}
