import 'package:bytebankfluttermodulo2/modelos/contato.dart';
import 'package:bytebankfluttermodulo2/screen/add_contato.dart';
import 'package:flutter/material.dart';

class ListaDeContatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.green[900],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 40,
              ),
              title: Text("Pessoa"),
              subtitle: Text("Numero Da Conta"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AdicionarContato()))
              .then((contato) => debugPrint(contato.toString()));
        },
        backgroundColor: Colors.green[900],
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
