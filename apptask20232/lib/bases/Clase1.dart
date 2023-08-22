import 'package:flutter/material.dart';

void main() {
  runApp(AppBases());
}

class AppBases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: (createScaffold()));
  }
}

createScaffold() {
  return Scaffold(
    appBar: AppBar(title: const Text('Mi APP'), backgroundColor: Colors.black),
    body: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
            color: Colors.black),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [createRow(), createRow(), createRow()],
        )),
  );
}

createRow() {
  return Container(
    decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.blue)),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      createContainer(text: '1', color: Colors.yellow),
      createContainer(text: '2'),
      createContainer(text: '3', color: Colors.red)
    ]),
  );
}

createContainer({required String text, Color? color}) {
  return Container(
    color: color ?? Colors.blue,
    width: 70,
    height: 70,
    alignment: Alignment.center,
    child: Text(text),
  );
}
