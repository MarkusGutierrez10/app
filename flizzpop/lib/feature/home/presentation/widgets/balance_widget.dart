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
        Text('${producto.imagen}'),
        Text('${producto.precio}'),
        
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
                Text("${producto.nombre}",
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
                    '${producto.imagen2}',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '${producto.precio}',
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