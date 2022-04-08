import 'package:flutter/material.dart';

import '../modelos/contato.dart';

class AdicionarContato extends StatefulWidget {
  const AdicionarContato({Key? key}) : super(key: key);

  @override
  State<AdicionarContato> createState() => _AdicionarContatoState();
}

class _AdicionarContatoState extends State<AdicionarContato> {
  final TextEditingController _controllerName = new TextEditingController();

  final TextEditingController _controllerCount = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Novo Contato"),
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controllerName,
              decoration: InputDecoration(
                label: Text("Nome Completo"),
              ),
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _controllerCount,
                decoration: InputDecoration(
                  label: Text("Numero da Conta"),
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final String name = _controllerName.text;
                    final int? numberCount =
                        int.tryParse(_controllerCount.text);
                    final Contato contato = new Contato(name, numberCount);

                    Navigator.pop(context, contato);
                  },
                  child: Text("Adicionar"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
