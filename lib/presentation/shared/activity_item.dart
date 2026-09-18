import 'package:flutter/material.dart';

// Modelo simple para definir cada actividad
class ActivityItem {
    final IconData icon;
    final String title;

    const ActivityItem({
        required this.icon, required this.title
    });
}

class ActivitiesCard extends StatelessWidget {
    final String title;
    final List<ActivityItem> activities;

    const ActivitiesCard({
        super.key,
        this.title = 'My Activities',
        required this.activities,
    });

    @override
    Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        decoration: BoxDecoration(
        color: const Color(0xFFC5AB9F),
        borderRadius: BorderRadius.circular(14),
      ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // alineacion al principio
        children: [
          // Título principal de la tarjeta
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),

          // lista de actividades, como vienen en forma de lista se hace un map
          ...activities.map((activity) {
            return Column(
              children: [
                const Divider(
                  color: Color(0xFFE6E4DF),
                  height: 16,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: [
                      Icon(
                        activity.icon,
                        color: const Color(0xFFE6E4DF),
                        size: 22,
                      ),
                      const SizedBox(width: 14),
                      Text(
                        activity.title,
                        style: const TextStyle(
                          color: Color(0xFFE6E4DF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}