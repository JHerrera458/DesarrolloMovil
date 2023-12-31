import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> consultarFrases() async {
  // Creación de url
  Uri url = Uri.https("api.thecatapi.com", "/v1/images/search");

  // Petición get
  http.Response response = await http.get(url);

  // Conversión de datos
  Map<String, dynamic> data = jsonDecode(response.body);

  print(data);
}
