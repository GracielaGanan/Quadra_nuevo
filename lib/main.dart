// main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(QuadraApp());
}

class QuadraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quadra',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Roboto', // Fuente predeterminada
      ),
      // Rutas para navegar entre pantallas
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/rate': (context) => RateScreen(),
      },
    );
  }
}

// Pantalla de inicio
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E8DA), // Fondo rosa viejo
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Encontremos comida',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Texto negro
              ),
            ),
            SizedBox(height: 20),
            // Botones para navegar a otras pantallas
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Iniciar sesión'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Registrar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/rate');
              },
              child: Text('Calificar puestos'),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla de login (iniciar sesión)
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Iniciar sesión')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Formulario de inicio de sesión'),
            // Aquí irían los campos de texto y botón para iniciar sesión
          ],
        ),
      ),
    );
  }
}

// Pantalla de registro
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrar cuenta')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Formulario de registro'),
            // Aquí irían los campos de texto y botón para registrar usuario
          ],
        ),
      ),
    );
  }
}

// Pantalla para calificar puestos de comida
class RateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calificar puestos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Formulario para calificar los puestos'),
            // Aquí iría un formulario para calificar los puestos
          ],
        ),
      ),
    );
  }
}


