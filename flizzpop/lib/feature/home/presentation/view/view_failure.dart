import 'dart:async';
import 'package:flutter/material.dart';

class failure extends StatefulWidget {
  const failure({super.key});

  @override
  State<failure> createState() => _InitialState();
}

class _InitialState extends State<failure> {
  bool _showImage = true;

  @override
  void initState() {
    super.initState();
    // Oculta la imagen después de 2 segundos
    Timer(Duration(seconds: 2), () {
      setState(() {
        _showImage = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/fondo.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedOpacity(
                  opacity: _showImage ? 1.0 : 0.0,
                  duration: Duration(seconds: 5),
                  child: Image.asset('assets/imgInitial.jpg', width: 500),
                ),
                SizedBox(height: 20),
                Text(
                  "MULTIPLES ERRORES!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                    letterSpacing: 2,
                    fontFamily: 'Arial',
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print('Botón presionado');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    'Empezar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}