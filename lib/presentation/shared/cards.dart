import 'package:flutter/material.dart';

class PrimaryCards extends StatelessWidget {
  final String fullName;
  final String profession;
  final String email;
  final String phone;
  final String? imageAsset;

  const PrimaryCards({
    super.key,
    required this.fullName,
    required this.profession,
    required this.email,
    required this.phone,
    this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFC5AB9F),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 42,
            backgroundColor: const Color(0xFF827064),
            backgroundImage: imageAsset != null ? AssetImage(imageAsset!) : null,
            child: imageAsset == null
                ? const Icon(Icons.person, size: 50, color: Colors.white70)
                : null,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: const TextStyle(
                    color: Color(0xFFFFFCF7),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  profession,
                  style: const TextStyle(
                    color: Color(0xFFE6E4DF),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.mail_outline, size: 14, color: Color(0xFFE6E4DF)),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        email,
                        style: const TextStyle(color: Color(0xFFE6E4DF), fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.phone, size: 14, color: Color(0xFFE6E4DF)),
                    const SizedBox(width: 6),
                    Text(
                      phone,
                      style: const TextStyle(color: Color(0xFFE6E4DF), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}