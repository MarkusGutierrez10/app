import 'package:flutter/material.dart';

import 'feature/home/presentation/view/view_Sucess.dart';
import 'feature/home/presentation/view/view_loading.dart';
import 'feature/home/presentation/view/view_initial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Initial()
      );
  }
}
