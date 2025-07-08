import 'package:flutter/material.dart';

class exProduto extends StatelessWidget {
  const exProduto({super.key});

  @override
  Widget build(BuildContext context) {
    bool exibeCatalogo = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Produto"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(labelText: "Nome do Produto"),
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Código do Produto",
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Quantidade"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Preço"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Material"),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Peso"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                "Categoria",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Selecione:",
                  border: UnderlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(
                    value: "categoria1",
                    child: Text("Categoria 1"),
                  ),
                  DropdownMenuItem(
                    value: "categoria2",
                    child: Text("Categoria 2"),
                  ),
                ],
                onChanged: (value) {},
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Text("Exibe no Catálogo Produto?"),
                  const Spacer(),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return Switch(
                        value: exibeCatalogo,
                        onChanged: (value) {
                          setState(() {
                            exibeCatalogo = value;
                          });
                        },
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
