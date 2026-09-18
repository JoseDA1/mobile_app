import 'package:flutter/material.dart';
import 'package:mobile_app/presentation/home/screens/home_screen.dart';
import 'package:mobile_app/presentation/user1/user1.dart';
import 'package:mobile_app/presentation/user2/user2.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(color: Color(0xFF6C7D8A)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      title: const Text("Midterm exam"),
                      subtitle: const Text("wroguhhf"),
                    )
                  ),
                ),
                ListTile(
                  title: const Text("Home"),
                  subtitle: const Text("Main screens"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                ListTile(
                  title: const Text("Jose Angarita"),
                  subtitle: const Text("General personal information about Jose"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const User1()),
                    );
                  },
                ),
                ListTile(
                  title: const Text("Sergio Diaz"),
                  subtitle: const Text("General personal information about Sergio"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const User2()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}