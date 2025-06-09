import 'package:flutter/material.dart';

import '../../../data/models/producto.dart';
import '../widgets/balance_widget.dart';

class Success extends StatelessWidget {
  final Producto producto;
  
  const Success({
    super.key, required this.producto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Balance(producto),  
    );
  }
}

