import 'dart:async';
import 'package:flutter/material.dart';

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
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
  
}