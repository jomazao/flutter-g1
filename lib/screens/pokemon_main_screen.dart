import 'package:example_app/data/pokemon_repository.dart';
import 'package:example_app/models/pokemon.dart';
import 'package:example_app/screens/trainers_screen.dart';
import 'package:example_app/widgets/pokemon_widget.dart';
import 'package:example_app/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokemonMainScreen extends StatefulWidget {
  @override
  PokemonMainScreenState createState() => PokemonMainScreenState();
}

class PokemonMainScreenState extends State<PokemonMainScreen> {
  final pokemonRepository = PokemonRepository();
  var touches = 0;
  @override
  Widget build(BuildContext context) {
    //Variables pokemon

    //

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 1, 35, 1),
        title: Text('DEVSHOUSE'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.network(
                  'https://image.shutterstock.com/image-vector/male-avatar-profile-picture-vector-260nw-149083895.jpg'),
            ),
            ListTile(
              title: Container(
                child: FlatButton(
                  child: Text('Perfil'),
                ),
              ),
              trailing: Icon(Icons.supervised_user_circle),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tabIndex) {
            print(tabIndex);

            if (tabIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrainersScreen()),
              );
            }
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.grey,
              ),
              label: 'Pokemon',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_contact_calendar_outlined,
                color: Colors.grey,
              ),
              label: 'Entrenadores',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              label: 'Contacto',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              label: 'Ajustes',
            ),
          ]),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Text('has toca $touches pokemon'),
            ...pokemonRepository
                .getAll()
                .map((pokemon) => GestureDetector(
                      onTap: () {
                        touches++;
                        setState(() {});
                      },
                      child: PokemonWidget(
                        pokemon: pokemon,
                      ),
                    ))
                .toList()
          ],
        ),
      ),
    );
  }
}
