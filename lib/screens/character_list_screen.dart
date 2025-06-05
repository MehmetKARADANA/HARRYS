import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/widgets/character_card.dart';
import '../bloc/character_bloc.dart';
import '../bloc/character_event.dart';
import '../bloc/character_state.dart';
import '../data/services/character_service.dart';

class CharacterListScreen extends StatelessWidget {
  const CharacterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CharacterBloc(CharacterService())..add(FetchCharacters()),
      child: Scaffold(
        appBar: AppBar(centerTitle: true,title: const Text("Harrys")),
        body: BlocBuilder<CharacterBloc, CharacterState>(
          builder: (context, state) {
            if (state is CharacterLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CharacterLoaded) {
              return ListView.builder(
                itemCount: state.characters.length,
                itemBuilder: (context, index) {
                  final character = state.characters[index];
                  return CharacterCard(character: character);
                },
              );
            } else if (state is CharacterError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.message,
                      style: const TextStyle(fontSize: 16, color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CharacterBloc>().add(FetchCharacters());
                      },
                      child: const Text("Tekrar Dene"),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: Text("Bilinmeyen durum"));
            }
          },
        ),
      ),
    );
  }
}

