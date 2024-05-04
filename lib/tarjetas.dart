import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TarjetasPage extends StatefulWidget {
  const TarjetasPage({super.key});

  @override
  State<TarjetasPage> createState() => _TarjetasPageState();
}

class _TarjetasPageState extends State<TarjetasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Curso de Flutter",
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontSize: 20.0))),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                color: Colors.grey[400],
                size: 25,
              ),
            )
          ],
          leading: Icon(
            Icons.menu,
            color: Colors.grey[400],
            size: 35.0,
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Tarjetas",
              style: TextStyle(fontSize: 24),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 52, 129, 230),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.carpenter_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      "\$999.99",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "CURA0128963214",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "12/12/2112",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: HexColor("#FF0000"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.route,
                          color: Colors.white,
                        ),
                        Text(
                          "Recorridos",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: HexColor("#FF0000"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: Colors.white,
                        ),
                        Text(
                          "Recargas",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: HexColor("#FF0000"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.block,
                          color: Colors.white,
                        ),
                        Text(
                          "Bloquear",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: HexColor("#FF0000"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                        Text(
                          "Predeterminad",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 200,
                height: 50,
                decoration: BoxDecoration(
                  color: HexColor("#FF0000"),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.place,
                      color: Colors.white,
                    ),
                    Text(
                      "Puntos de recarga",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
              ),
            )
          ]),
        ),
        floatingActionButton: Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: HexColor("#99CC00")),
          child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text("Agregar", style: TextStyle(color: Colors.white)),
              ]),
        ));
  }
}
