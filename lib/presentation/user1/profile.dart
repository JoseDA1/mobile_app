import 'package:flutter/material.dart';
import '../shared/cards.dart';
import '../shared/info_card.dart';
import '../shared/activity_item.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC5AB9F), // fondo pal bar
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Targeta principal
            PrimaryCards(
              fullName: "Jose David Angarita",
              profession: "Student",
              email: "jdangaritasa@ufpso.edu.co",
              phone: '328337178'
            ),

            const SizedBox(height: 16),

            // contenedor de gustos
            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.music_note,
                    title: 'My Hobbies',
                    subtitle: 'I like to exercise',
                    backgroundColor: const Color(0xFFC5AB9F),
                    iconColor: const Color(0xFF827064),
                  ),
                ),
                const SizedBox(width: 14), // para separar los widgets
                Expanded(
                  child: InfoCard(
                    icon: Icons.music_note,
                    title: 'My Taste',
                    subtitle: 'I like eat ice cream',
                    backgroundColor: const Color(0xFF827064),
                    iconColor: const Color(0xFFFFFCF7),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            //actividades
            ActivitiesCard(
              activities: const [
                ActivityItem(icon: Icons.menu_book, title: 'Studying'),
                ActivityItem(icon: Icons.work_outline, title: 'Working out'),
                ActivityItem(icon: Icons.videogame_asset_outlined, title: 'Playing'),
                ActivityItem(icon: Icons.restaurant, title: 'Sleeping'),
                ActivityItem(icon: Icons.restaurant, title: 'Waching series'),
              ],
            )
          ],
        ),
      ),
    );
  }
}