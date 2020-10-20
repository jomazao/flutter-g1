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
  var showMenu = false;
  var limit;
  var order;

  @override
  Widget build(BuildContext context) {
    //Variables pokemon

    //

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 1, 35, 1),
        title: Text('DEVSHOUSE POKEMON'),
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
                .getAll(limit: limit, order: order)
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
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 700),
            child: !showMenu
                ? SizedBox()
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                final nameController = TextEditingController();
                                final numberController =
                                    TextEditingController();
                                final photoController = TextEditingController();
                                final typeController = TextEditingController();
                                final errorController = TextEditingController();

                                return AlertDialog(
                                  title: Text('Añadir Pokemon'),
                                  content: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      Image.network(
                                        'https://elvortex.com/wp-content/uploads/2018/03/HddtBOT-e1520478229723.png',
                                        height: 130,
                                      ),
                                      TextFormField(
                                        controller: nameController,
                                        decoration: InputDecoration(
                                            hintText: 'Ingresa el nombre',
                                            errorText: 'error error'),
                                        maxLength: 20,
                                      ),
                                      TextField(
                                        controller: numberController,
                                        decoration: InputDecoration(
                                            hintText: 'Ingresa el número'),
                                        maxLength: 4,
                                        maxLengthEnforced: true,
                                        keyboardType: TextInputType.number,
                                      ),
                                      TextField(
                                        controller: typeController,
                                        decoration: InputDecoration(
                                            hintText: 'Ingresa el tipo'),
                                        maxLength: 15,
                                      ),
                                      TextField(
                                        controller: photoController,
                                        decoration: InputDecoration(
                                            hintText: 'Ingresa la foto'),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    FlatButton(
                                      onPressed: () {
                                        final name = nameController.text;
                                        final number = numberController.text;
                                        final type = typeController.text;
                                        final photo = photoController.text;

                                        if (name.isEmpty ||
                                            number.isEmpty ||
                                            photo.isEmpty ||
                                            type.isEmpty) {
                                          errorController.text =
                                              'No puede dejar campos vacíos';
                                          showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                    title: Text(
                                                        'No puede dejar campos vacíos'),
                                                  ));
                                        } else if (pokemonRepository
                                            .nameExists(name)) {
                                          errorController.text =
                                              'Ya existe este nombre';
                                        } else {
                                          var pokemon = Pokemon(
                                            name: name,
                                            number: int.parse(number),
                                            type: type,
                                            photoUrl: photo,
                                          );
                                          pokemonRepository.create(pokemon);
                                          Navigator.pop(context);
                                          setState(() {});
                                        }
                                      },
                                      child: Text('Guardar'),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Icon(Icons.add),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                final limitController = TextEditingController();
                                limitController.text = '${limit ?? 0}';
                                var orderSelected = order;
                                return AlertDialog(
                                  title: Text('Filtro'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Límite máximo'),
                                        controller: limitController,
                                        keyboardType: TextInputType.number,
                                      ),
                                      StatefulBuilder(
                                        builder: (context, setStateTwo) {
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              RadioListTile(
                                                title: Text('Por nombre'),
                                                value: 1,
                                                groupValue: orderSelected,
                                                onChanged: (value) {
                                                  orderSelected = value;
                                                  setStateTwo(() {});
                                                },
                                              ),
                                              RadioListTile(
                                                title: Text('Por tipo'),
                                                value: 2,
                                                groupValue: orderSelected,
                                                onChanged: (value) {
                                                  orderSelected = value;
                                                  setStateTwo(() {});
                                                },
                                              ),
                                              RadioListTile(
                                                title: Text('Por número'),
                                                value: 3,
                                                groupValue: orderSelected,
                                                onChanged: (value) {
                                                  orderSelected = value;
                                                  setStateTwo(() {});
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      FlatButton(
                                          color: Colors.green,
                                          onPressed: () {
                                            limit = limitController.text.isEmpty
                                                ? null
                                                : int.parse(
                                                    limitController.text);
                                            order = orderSelected;
                                            Navigator.pop(context);
                                            setState(() {});
                                          },
                                          child: Text('Filtrar'))
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Icon(Icons.filter_alt),
                      ),
                    ],
                  ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(!showMenu
                ? Icons.arrow_upward_outlined
                : Icons.arrow_downward_outlined),
            onPressed: () {
              showMenu = !showMenu;

              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
