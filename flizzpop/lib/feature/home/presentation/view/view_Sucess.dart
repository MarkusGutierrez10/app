import 'package:flutter/material.dart';

class Sucess extends StatelessWidget {
  // Lista de gaseosas con nombre y la imagen
  final bebidas = [
    {"nombre": "Coca Cola", "imagen": "assets/cocacola.jpeg"},
    {"nombre": "7UP", "imagen": "assets/7up.jpeg"},
    {"nombre": "Coca Cola Zero", "imagen": "assets/coca zero.jpeg"},
    {"nombre": "Dr-Pepper", "imagen": "assets/Dr-Pepper.jpeg"},
    {"nombre": "Fanta", "imagen": "assets/Fanta.jpeg"},
    {"nombre": "Monster", "imagen": "assets/monster.jpeg"},
    {"nombre": "Pepsi", "imagen": "assets/Pepsi.jpeg"},
    {"nombre": "Red Bull", "imagen": "assets/redbull.jpeg"},
    {"nombre": "Schweppes", "imagen": "assets/Schweppes.jpeg"},
    {"nombre": "Sprite", "imagen": "assets/sprite.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FLIZZPOP",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fondo.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            for (var bebi in bebidas)
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Image.asset(bebi["imagen"]!, width: 200, height: 200),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bebi["nombre"]!,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Compraste ${bebi["nombre"]}"),
                              ),
                            );
                          },
                          child: Text("Comprar"),
                        ),
                      ],
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
