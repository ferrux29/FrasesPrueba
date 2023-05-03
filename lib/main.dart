import 'package:flutter/material.dart';
import 'package:pruebaparcial/api_services.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prueba",
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController fraseController = TextEditingController();
  final TextEditingController autorController = TextEditingController();
  final TextEditingController libroController = TextEditingController();
  Api_Services api_services = Api_Services();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFFF),
        title: Text(
          "Frases Sebastian Ferrufino Manyari",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.cyan,
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    child: Image(
                      image: NetworkImage(
                          "https://img.freepik.com/vector-gratis/pluma-pluma-o-pluma-tinta_186119-49.jpg?size=626&ext=jpg"),
                    ),
                    margin: EdgeInsets.all(10.0),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Text(
                      "Frase Celebre",
                      style: TextStyle(color: Colors.black),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 200),
                    width: 90,
                    child: TextField(
                      controller: idController,
                      decoration: InputDecoration(
                        hintText: "ID",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 5.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    width: 250,
                    height: 100,
                    child: TextField(
                      controller: fraseController,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFFFFFFF)),
                        ),
                        hintText: "Frase",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 5.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    width: 250,
                    child: TextField(
                      controller: autorController,
                      decoration: InputDecoration(
                        hintText: "Autor",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 5.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    width: 250,
                    child: TextField(
                      controller: libroController,
                      decoration: InputDecoration(
                        hintText: "Libro",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 5.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
