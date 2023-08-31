import 'package:flutter/material.dart';

void main() {
  runApp(AppBases());
}

class AppBases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: createScaffold());
  }
}

createScaffold() {
  String url = "assets/images/paisaje.jpg";
  String title = "Montes morados";
  String subtitle = "Medellín, Colombia";
  String rating = "5.0";
  String description =
      "Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.";
  return Scaffold(
      appBar: AppBar(
          title: const Text('Aplicación 2023-2'),
          backgroundColor: Colors.black),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            createImage(url),
            createHeader(title, subtitle, rating),
            createActions(),
            Container(
              margin: const EdgeInsets.all(15),
              child: createText(description),
            )
          ],
        ),
      ));
}

createHeader(String title, String subtitle, String rating) {
  return Container(
    margin: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            createText(title, weight: FontWeight.w600, height: 30.0),
            createText(subtitle, weight: FontWeight.w200, height: 20.0)
          ],
        ),
        createIcon(const Icon(
          Icons.star,
          color: Colors.red,
        )),
        createText(rating, weight: FontWeight.w400, height: 20.0)
      ],
    ),
  );
}

createActions() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      createIconWithText(const Icon(Icons.phone), 'Call',
          color: Colors.blue[600]),
      createIconWithText(const Icon(Icons.route), 'Route',
          color: Colors.blue[600]),
      createIconWithText(const Icon(Icons.share), 'Share',
          color: Colors.blue[600]),
    ],
  );
}

createIcon(Icon icon, {Color? color}) {
  return IconButton(
    onPressed: () => print('hola'),
    icon: icon,
    iconSize: 50,
    color: color,
  );
}

createIconWithText(Icon icon, String text, {Color? color}) {
  return Column(
    children: [
      IconButton(
        onPressed: () => print('hola'),
        icon: icon,
        iconSize: 50,
        color: color,
      ),
      createText(text, weight: FontWeight.w500)
    ],
  );
}

createText(String text, {weight, height}) {
  return Text(
    text,
    style: TextStyle(fontWeight: weight, fontSize: height),
  );
}

createImage(String url) {
  return Image(
    image: AssetImage(url),
    width: double.infinity,
    height: 221,
  );
}

mostrarPersona() {
  print('Presionanaste el botón');
}
