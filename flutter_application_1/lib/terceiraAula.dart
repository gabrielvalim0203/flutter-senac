import 'package:flutter/material.dart';

class Componentes extends StatefulWidget {
  const Componentes({super.key});

  @override
  ComponentesState createState() => ComponentesState();
}

class ComponentesState extends State<Componentes> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Digite seu Login"),
              maxLength: 4,
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
            onPressed: () {
              // Ação do botão
            },
            child: Text(
              "Enviar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
