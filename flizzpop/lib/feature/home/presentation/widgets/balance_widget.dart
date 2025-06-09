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
        Text('${producto.products[0].nombre}')
      ],
    );
  }
}