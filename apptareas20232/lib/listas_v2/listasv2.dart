import 'package:apptareas20232/listas_v2/controllers/Frases.dart';
import 'package:flutter/material.dart';

class ListaV2 extends StatefulWidget {
  const ListaV2({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListaV2();
  }
}

class _ListaV2 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Música")),
      body: fillList(),
    );
  }
}

fillList() {
  consultarFrases().then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  });
  return SizedBox(
    height: 150,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return fillItem();
      },
      itemCount: 4,
    ),
  );
}

fillItem() {
  return const Card(
    color: Color.fromARGB(255, 126, 147, 255),
    margin: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
    elevation: 5,
    child: SizedBox(
      width: 190,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            title: Text("Hola"),
          ),
          Row(
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.add)),
              TextButton(onPressed: null, child: Text("Abrir")),
              ElevatedButton(onPressed: null, child: Text("Cerrar")),
            ],
          ),
        ],
      ),
    ),
  );
}
