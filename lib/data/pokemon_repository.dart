import 'package:example_app/models/pokemon.dart';

class PokemonRepository {
  final _POKEMON_LIST = [
    Pokemon(
      name: 'Charmander',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
      number: 4,
      type: 'Fire',
    ),
    Pokemon(
      name: 'Charizard',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png',
      number: 6,
      type: 'Fire',
    ),
    Pokemon(
      name: 'Caterpie',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png',
      number: 10,
      type: 'Insect',
    ),
    Pokemon(
      name: 'Metapod',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/011.png',
      number: 11,
      type: 'Insect',
    ),
    Pokemon(
      name: 'charmander',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
      number: 4,
      type: 'Insect',
    ),
    Pokemon(
      name: 'Chorizard',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png',
      number: 6,
      type: 'Insect',
    ),
    Pokemon(
      name: 'charmander',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
      number: 4,
      type: 'Fire',
    ),
    Pokemon(
      name: 'Charizard',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png',
      number: 6,
      type: 'Fire',
    ),
    Pokemon(
      name: 'Caterpie',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png',
      number: 10,
      type: 'Insect',
    ),
    Pokemon(
      name: 'Metapod',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/011.png',
      number: 11,
      type: 'Insect',
    ),
    Pokemon(
      name: 'charmander',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
      number: 4,
      type: 'Insect',
    ),
    Pokemon(
      name: 'Chorizard',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png',
      number: 6,
      type: 'Insect',
    ),
    Pokemon(
      name: 'charmander',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
      number: 4,
      type: 'Fire',
    ),
    Pokemon(
      name: 'Charizard',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png',
      number: 6,
      type: 'Fire',
    ),
    Pokemon(
      name: 'Caterpie',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png',
      number: 10,
      type: 'Insect',
    ),
    Pokemon(
      name: 'Metapod',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/011.png',
      number: 11,
      type: 'Insect',
    ),
    Pokemon(
      name: 'charmander',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png',
      number: 4,
      type: 'Insect',
    ),
    Pokemon(
      name: 'Chorizard',
      photoUrl:
          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png',
      number: 6,
      type: 'Insect',
    ),
  ];

  List<Pokemon> getAll({int limit, int order}) {
    var result = _POKEMON_LIST;

    if (order != null) {
      switch (order) {
        case 1:
          _POKEMON_LIST.sort(
              (a, b) => a.name.toUpperCase().compareTo(b.name.toUpperCase()));
          break;
        case 2:
          _POKEMON_LIST.sort((a, b) => a.type.compareTo(b.type));
          break;
        case 3:
          _POKEMON_LIST.sort((a, b) => a.number.compareTo(b.number));
          break;
      }
    }

    if (limit != null) {
      limit = limit > _POKEMON_LIST.length ? _POKEMON_LIST.length : limit;

      result = _POKEMON_LIST.sublist(0, limit);
    }

    return result;
  }
  //TODO connect to online real database

  //Local temporal database

  create(Pokemon pokemon) {
    _POKEMON_LIST.add(pokemon);
  }

  Pokemon get(String id) {
    //TODO add code to get the pokemon from the db
    return Pokemon();
  }

  nameExists(String name) {
    return _POKEMON_LIST.any((pokemon) => pokemon.name == name);
  }

  update(Pokemon pokemon) {
    //TODO add code to update the pokemon on the db
  }

  delete(String id) {
    //TODO add code yo delete the pokemon on the db
  }
}
