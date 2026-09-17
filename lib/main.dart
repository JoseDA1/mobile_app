import 'package:flutter/material.dart';
import 'package:mobile_app/presentation/home/screens/home_screen.dart';

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
      home: HomeScreen(),
    );
  }
}