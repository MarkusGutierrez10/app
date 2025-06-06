import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.network("https://i.imgur.com/AGwZOsZ.jpeg"),
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/fondo.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Image.asset(
                'assets/cargando.gif',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            // Botón posicionado en la parte inferior
            Positioned(
              bottom: 30,
              left: 30,
              right: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  // Acción del botón
                },
                child: Text('𝙄𝙣𝙜𝙧𝙚𝙨𝙖𝙧'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
