import 'package:flutter/material.dart';
import 'package:harry_potter/screens/character_detail_screen.dart' show CharacterDetailScreen;
import '../data/models/character_model.dart';

class CharacterCard extends StatelessWidget {
  final CharacterModel character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final imageUrl = character.image;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading:Hero(
           tag: character.name,
           child: CircleAvatar(
           radius: 30,
           backgroundImage: (character.image != null && character.image.isNotEmpty)
           ? NetworkImage(character.image)
           : const AssetImage('assets/images/placeholder.png') as ImageProvider,
          backgroundColor: Colors.grey[300],
              ),
                ),
        title: Text(
          character.name.isNotEmpty ? character.name : "Bilinmeyen",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '${character.house.isNotEmpty ? character.house : "Ev yok"} • ${character.species.isNotEmpty ? character.species : "Tür yok"}',
          style: const TextStyle(color: Colors.black54),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => CharacterDetailScreen(character: character),
            ),
          );
        },
      ),
    );
  }
}
