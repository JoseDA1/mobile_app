import 'package:flutter/material.dart';
import 'package:mobile_app/presentation/shared/drawer_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerCustom(),
      appBar: AppBar(
        title: const Text('Mojo Dojo Casa House'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Mobile Devices midterm exam',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color (0xFF0A0908),
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '0192322 - Jose David Angarita',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF3B3731),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '0192357 - Sergio Andres Diaz',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF3B3731),
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