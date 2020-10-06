import 'package:example_app/models/trainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrainerWidget extends StatefulWidget {
  final Trainer trainer;

  TrainerWidget({
    this.trainer,
  });

  @override
  TrainerWidgetState createState() => TrainerWidgetState();
}

class TrainerWidgetState extends State<TrainerWidget> {
  var selected = false;

  Color typeToColor(String gender) {
    switch (gender) {
      case 'Male':
        return Color(0xff729f3f);
      case 'Female':
        return Color(0xfffe7e24);
    }
  }

  @override
  Widget build(BuildContext context) {
    var widgetType = (String type) => GestureDetector(
          onTap: () {
            selected = !selected;
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: typeToColor(type),
            ),
            child: Text(
              type,
              style: TextStyle(color: Colors.white),
            ),
          ),
        );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: selected ? Colors.limeAccent : null,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              widget.trainer.photoUrl,
              height: 100,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '${widget.trainer.name}',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 10,
            ),
            widgetType(widget.trainer.gender)
          ],
        ),
      ),
    );
  }
}
