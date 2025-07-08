import 'package:flutter/material.dart';
import 'cadastro.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Bar'),
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('imagem/perfil.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text("Cabeçalho"),
            ),
            ListTile(
              title: Text("Menu"),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MaterialPageRoute(builder: (context) => cadastro()),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text("Menu"),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            Divider(),
            ListTile(
              title: Text("Menu"),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            Divider(),
            ListTile(
              title: Text("Menu"),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
