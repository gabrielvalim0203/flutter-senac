import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'listarBanco.dart';

class CadastroBanco extends StatefulWidget {
  const CadastroBanco({super.key});

  @override
  State<CadastroBanco> createState() => _CadastroBancoState();
}

class _CadastroBancoState extends State<CadastroBanco> {
  TextEditingController nome = TextEditingController();
  TextEditingController sobrenome = TextEditingController();

  //Cadastro no banco de dados (API)
  void cadastroBanco() {
    var url = Uri.parse(
      "http://localhost:8080/gabriel%20programas/inserir.php",
    );

    http.post(url, body: {"nome": nome.text, "sobrenome": sobrenome.text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro Banco"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nome,
              decoration: InputDecoration(labelText: "Nome"),
            ),
            TextField(
              controller: sobrenome,
              decoration: InputDecoration(labelText: "Sobrenome"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cadastroBanco();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => listarBanco()),
                );
              },
              child: Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}
