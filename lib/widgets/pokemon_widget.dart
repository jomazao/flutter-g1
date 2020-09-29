import 'package:example_app/models/pokemon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokemonWidget extends StatelessWidget {
  final Pokemon pokemon;

  PokemonWidget({
    this.pokemon,
  });

  Color typeToColor(String type) {
    switch (type) {
      case 'Insect':
        return Color(0xff729f3f);
      case 'Fire':
        return Color(0xfffe7e24);
    }
  }

  @override
  Widget build(BuildContext context) {
    var widgetType = (String type) => Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: typeToColor(type),
          ),
          child: Text(
            type,
            style: TextStyle(color: Colors.white),
          ),
        );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            pokemon.photoUrl,
            height: 100,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '${pokemon.name}',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'N. °${pokemon.number}',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          widgetType(pokemon.type)
        ],
      ),
    );
  }
}
