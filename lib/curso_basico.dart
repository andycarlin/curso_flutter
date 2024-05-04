import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class CursoBasicoPage extends StatefulWidget {
  const CursoBasicoPage({Key? key}) : super(key: key);

  @override
  State<CursoBasicoPage> createState() => _CursoBasicoPageState();
}

class _CursoBasicoPageState extends State<CursoBasicoPage> {
  List<dynamic> data = [];

  Future<void> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse("https://www.yanditv.com/api/curso_basico"));
      if (response.statusCode == 200) {
        setState(() {
          data = json.decode(response.body);
        });
      } else {
        throw Exception("Fallo al cargar los datos");
      }
    } catch (e) {
      throw Exception("Fallo al cargar los datos: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, index) {
            final item = data[index];
            Color cardColor = Colors.white;
            String carrera = item["carrera"];

            if (carrera.isEmpty) {
              cardColor = HexColor(
                  "#0099CB"); // Color azul para quienes no tienen carrera
              carrera = "Externo";
            } else if (carrera.toLowerCase() == "software") {
              cardColor = HexColor(
                  "#CB0101"); // Color rojo para quienes están en la carrera de software
              carrera = "Software";
            }

            return Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[300],
                  child: Text(
                    item["nombre"][0].toUpperCase(),
                    style: TextStyle(
                      color: Colors.grey[
                          800], // Cambiar el color del texto a gris oscuro
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                title: Text(
                  item["nombre"],
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cédula: ${item["cedula"]}",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Correo: ${item["correo"]}",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Celular: ${item["celular"]}",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Carrera: $carrera",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
