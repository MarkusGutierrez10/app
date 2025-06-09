import 'package:flutter/material.dart';

class failure extends StatelessWidget {
  const failure({
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  "𝙇𝙤 𝙨𝙚𝙣𝙩𝙞𝙢𝙤𝙨, 𝙝𝙪𝙗𝙤 𝙪𝙣 𝙚𝙧𝙧𝙤𝙧",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(250, 250, 4, 16),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}




