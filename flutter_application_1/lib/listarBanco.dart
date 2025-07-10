import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class listarBanco extends StatefulWidget {
  const listarBanco({super.key});

  @override
  State<listarBanco> createState() => _listarBancoState();
}

class _listarBancoState extends State<listarBanco> {
  Future listarDadosBanco() async {
    var url = "http://localhost:8080/gabriel%20programas/conecta.php";
    var resultado = await http.get(Uri.parse(url));

    return jsonDecode(resultado.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listar dados do Banco de Dados (API) ')),
      body: FutureBuilder(
        future: listarDadosBanco(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print('Erro na lista de Dados');
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
