import 'dart:async';
import 'dart:convert';
import 'package:pruebaparcial/frase.dart';
import 'package:http/http.dart' as http;

class Api_Services {
  final String url =
      "https://allugofrases.herokuapp.com/frases/random";

  /*
    <<< GET FUNCTION >>>
  */
  Future<List<Frase>> getfrases() async {
    //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //String token = sharedPreferences.getString('token'); // OBTENER TOKEN

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    // print("Token: " + token);
    // print("Code: " + response.statusCode.toString());
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new Frase.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load students from API');
    }
  }

  Future<Frase> getFrase(int id) async {
    final response = await http.get('$url/$id');
    if (response.statusCode == 200)
      return Frase.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load student from API');
  }