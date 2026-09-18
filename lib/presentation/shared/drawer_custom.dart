import 'package:flutter/material.dart';
import 'package:mobile_app/presentation/home/screens/home_screen.dart';
import 'package:mobile_app/presentation/user1/profile.dart';
import 'package:mobile_app/presentation/user2/profile.dart';

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
                  decoration: const BoxDecoration(color: Color(0xFF827064)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                      title: const Text("Midterm exam", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFCF7))),
                      subtitle: const Text("Sixth term", style: TextStyle(color: Color(0xFFE6E4DF))),
                    )
                  ),
                ),
                ListTile(
                  title: const Text("Home", style: TextStyle(fontWeight: FontWeight.bold)),
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
                  title: const Text("Jose Angarita", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("General personal information about Jose"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),
                ListTile(
                  title: const Text("Sergio Diaz", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("General personal information about Sergio"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileTwo()),
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