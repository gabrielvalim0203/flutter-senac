import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//declaraçoes de variaveis
class aula1Flutter extends StatefulWidget {
  const aula1Flutter({super.key});

  @override
  State<aula1Flutter> createState() => _aula1FlutterState();
}

//retornos do leyaut do flutter
class _aula1FlutterState extends State<aula1Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ola mundo"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "usuario:"),
                maxLength: 10, // macimo de caracteres
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "senha:"),
                obscureText: true, //para senha, para ficar pontinhos
              ),
            ),
          ],
        ),
      ),
    );
  }
}
