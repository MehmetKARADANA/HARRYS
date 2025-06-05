import 'package:flutter/material.dart';
import '../data/models/character_model.dart';

class CharacterDetailScreen extends StatelessWidget {
  final CharacterModel character;

  const CharacterDetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final imageUrl = character.image;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(character.name),
        backgroundColor: Colors.white12,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: character.name,
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: (imageUrl != null && imageUrl.isNotEmpty)
                        ? NetworkImage(imageUrl)
                        : const AssetImage('assets/images/placeholder.png') as ImageProvider,
                  ),
                ),
                  clipBehavior: Clip.hardEdge,
              ),
            ),
            const SizedBox(height: 20),
            _buildDetailCard(
              context,
              title: "İsim",
              value: character.name,
              icon: Icons.person,
            ),
            _buildDetailCard(
              context,
              title: "Ev",
              value: character.house.isNotEmpty ? character.house : "Belirtilmemiş",
              icon: Icons.home,
            ),
            _buildDetailCard(
              context,
              title: "Tür",
              value: character.species,
              icon: Icons.category,
            ),
            _buildDetailCard(
              context,
              title: "Cinsiyet",
              value: character.gender,
              icon: Icons.wc,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailCard(BuildContext context,
      {required String title, required String value, required IconData icon}) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
