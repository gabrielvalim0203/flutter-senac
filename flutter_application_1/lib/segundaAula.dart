import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class segundaAula extends StatefulWidget {
  const segundaAula({super.key});

  @override
  State<segundaAula> createState() => _segundaAulaState();
}

class _segundaAulaState extends State<segundaAula> {
  //atributos para o flutter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //menu a cima
        title: Text("segunda aula"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        //corpo do app
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Campo 1"),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Campo 2"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Campo 1"),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Campo 2"),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Campo 3"),
                  ),
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Campo 1"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
