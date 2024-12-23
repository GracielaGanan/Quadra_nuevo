//rate

import 'package:flutter/material.dart';

class RateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calificar Puestos')),
      body: Center(
        child: Text(
          'Aquí podrás calificar los puestos de comida.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
