import 'package:apptareas20232/agenda/main.dart';
import 'package:apptareas20232/bases/IconsTextsImages.dart';
import 'package:apptareas20232/bases/rowsColumnsContainers.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/detailZone.dart';
import 'package:apptareas20232/ejemplo_listas_v1/views/listZones.dart';
import 'package:apptareas20232/listas_v2/listasv2.dart';
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
        "places": (context) => ListZones(),
        "agenda": (context) => AgendaMain(),
        "bases1": (context) => IconsTextsImages(),
        "bases2": (context) => RowsColumnsContainers(),
        "musica": (context) => ListaV2(),
      },
    );
  }
}

createScaffold() {
  List examples = [
    {"name": "Lista de lugares", "route": "places"},
    {"name": "Agenda de contactos", "route": "agenda"},
    {"name": "Bases 1", "route": "bases1"},
    {"name": "Bases 2, rows, columns y containers", "route": "bases2"},
    {"name": "Lista musicial", "route": "musica"}
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
            routing(context, examples[index]["route"]);
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

void routing(BuildContext context, String route) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) => AgendaMain(),
  //   ),
  // );
  Navigator.pushNamed(context, route);
}
