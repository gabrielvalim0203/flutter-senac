import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Atividade1 extends StatefulWidget {
  const Atividade1({super.key});

  @override
  State<Atividade1> createState() => _Atividade1State();
}

class _Atividade1State extends State<Atividade1> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController sobrenomeController = TextEditingController();
  final TextEditingController ruaController = TextEditingController();
  final TextEditingController cidadeController = TextEditingController();
  final TextEditingController estadoController = TextEditingController();
  final TextEditingController paisController = TextEditingController();
  final TextEditingController controller7 = TextEditingController();
  final TextEditingController controller8 = TextEditingController();
  final TextEditingController controller9 = TextEditingController();
  final TextEditingController controller10 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atividade 1"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: nomeController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Digite seu nome"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: sobrenomeController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Digite seu Sobrenome",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: ruaController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Rua"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: cidadeController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Cidade"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: estadoController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Estado"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: paisController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "País"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller7,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Valor 7"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller8,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Valor 8"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller9,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Valor 9"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller10,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Valor 10"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print("Nome: ${nomeController.text}");
                  print("Sobrenome: ${sobrenomeController.text}");
                  print("Rua: ${ruaController.text}");
                  print("Cidade: ${cidadeController.text}");
                  print("Estado: ${estadoController.text}");
                  print("País: ${paisController.text}");
                  print("Valor 7: ${controller7.text}");
                  print("Valor 8: ${controller8.text}");
                  print("Valor 9: ${controller9.text}");
                  print("Valor 10: ${controller10.text}");
                },
                child: Text("Enviar Dados"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
