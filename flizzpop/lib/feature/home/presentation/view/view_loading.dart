
import 'package:flutter/material.dart';

class loading extends StatelessWidget {
  const loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          
        
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/fondo.jpeg',
              fit: BoxFit.cover,
            ),
          ),
    
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/cargando.gif',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}