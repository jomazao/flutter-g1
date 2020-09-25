import 'package:example_app/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.grey,
              ),
              label: 'Productos',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_contact_calendar_outlined,
                color: Colors.grey,
              ),
              label: 'Servicios',
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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductWidget(),
          ProductWidget(),
          ProductWidget(),
          ProductWidget(),
        ],
      ),
    );
  }
}
