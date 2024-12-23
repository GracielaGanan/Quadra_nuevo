// home_sceen.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E8DA), // Fondo rosa viejo
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Encontremos comida',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Lemon Tuesday',
              color: Colors.black, // Negro
            ),
          ),
          SizedBox(height: 20),
          Image.asset('assets/images/hamburguesa.png', height: 150),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.pink,
            ),
            child: Text('Iniciar Sesión'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.pink,
            ),
            child: Text('Registrarse'),
          ),
        ],
      ),
    );
  }
}
