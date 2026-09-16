import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Exam App',
      // Tema global
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF121418), // Fondo de todas las pantallas
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0091EA), // Fondo azul del AppBar
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle( //Estilos de appbar
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: const MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //toma el scaffoldBackgroundColor
      appBar: AppBar(
        leading: IconButton( //Icon Hamurguesa
          icon: const Icon(Icons.menu),
          onPressed: () {}, // No hace nada
        ),
        title: const Text('Welcome to my home!!'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Mobile Devices midterm exam',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 8), // margen entre textos
            Text(
              '0192322 - Jose David Angarita',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6C7D8A),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Studing',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
