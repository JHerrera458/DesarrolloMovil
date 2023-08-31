import 'package:apptareas20232/agenda/main.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/detailZone.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/listZones.dart';
import 'package:apptareas20232/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppBases());
}

class AppBases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createScaffold(),
      routes: {
        "home": (context) => ListZones(),
        "detailPlace": (context) => DetailZone(),
      },
    );
  }
}

createScaffold() {
  List examples = [
    {"name": "Lista de lugares"},
    {"name": "Agenda de contactos"}
  ];

  return Scaffold(
    appBar: AppBar(
      title: const Text("Aplicación 2023 2"),
    ),
    body: ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(examples[index]["name"]),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AgendaMain(),
                ));
          },
        );
      },
      itemCount: examples.length,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.black,
      ),
    ),
  );
}
