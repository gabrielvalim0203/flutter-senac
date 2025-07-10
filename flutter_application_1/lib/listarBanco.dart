import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'CadastroBanco.dart';

class ListarBanco extends StatefulWidget {
  const ListarBanco({super.key});

  @override
  State<ListarBanco> createState() => _ListarBancoState();
}

class _ListarBancoState extends State<ListarBanco> {
  Future listarDadosBanco() async {
    var url = "http://localhost:8080/gabriel%20programas/conecta.php";
    var resultado = await http.get(Uri.parse(url));

    return jsonDecode(resultado.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listar dados do Banco de Dados (API)'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CadastroBanco()),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: listarDadosBanco(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            // Use a logging framework instead of print in production code
            debugPrint('Erro na lista de Dados');
          }
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    List list = snapshot.data;
                    return ListTile(
                      title: Text(list[index]['nome']),
                      subtitle: Text(list[index]['sobrenome']),
                    );
                  },
                )
              : CircularProgressIndicator();
        },
      ),
    );
  }
}
