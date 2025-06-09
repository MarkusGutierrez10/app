import 'package:flutter/material.dart';

import '../../../data/models/producto.dart';

class Balance extends StatelessWidget {
  final Producto producto;
  const Balance(this.producto);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Saldo'),
        Text('${producto.nombre}'),
        //Text(user.body)
        Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Título de la Card',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://picsum.photos/300',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Esta es una descripción breve que explica el contenido de esta tarjeta. Todo está alineado al centro para un diseño limpio y agradable.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}