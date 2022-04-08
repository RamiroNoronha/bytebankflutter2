import 'package:bytebankfluttermodulo2/screen/add_contato.dart';
import 'package:bytebankfluttermodulo2/screen/dashboard.dart';
import 'package:bytebankfluttermodulo2/screen/lista_contatos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoard(),
    );
  }
}
