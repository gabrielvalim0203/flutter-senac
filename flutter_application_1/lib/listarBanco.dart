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
    return const Placeholder();
  }
}
