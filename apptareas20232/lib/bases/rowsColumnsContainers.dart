import 'package:flutter/material.dart';

class RowsColumnsContainers extends StatelessWidget {
  const RowsColumnsContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return createScaffold();
  }
}

createScaffold() {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Aplicación 2023 2"),
    ),
    body: Container(
      margin: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: createColum(),
    ),
  );
}

Column createColum() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      createRow(),
      createRow(),
      const Text("...."),
      Image.network(
          "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg"),
    ],
  );
}

createRow() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      border: Border.all(width: 1),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        createContainer(text: "1"),
        createContainer(text: "2", color: Colors.green),
        createContainerWithDecoration(text: "3")
      ],
    ),
  );
}

Container createContainerWithDecoration({required text, Color? color}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black45,
      border: Border.all(
        width: 1,
        color: Colors.red,
      ),
    ),
    width: 50,
    height: 50,
    child: Text(text),
  );
}

createContainer({required text, Color? color}) {
  return Container(
    color: color ?? Colors.blue,
    width: 50,
    height: 50,
    child: Text(text),
  );
}
