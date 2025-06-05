import 'package:flutter_bloc/flutter_bloc.dart';
import 'character_event.dart';
import 'character_state.dart';
import '../data/services/character_service.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterService service;

  CharacterBloc(this.service) : super(CharacterInitial()) {
   on<FetchCharacters>((event, emit) async {
     emit(CharacterLoading());
     try {
         final characters = await service.fetchCharacters();
         emit(CharacterLoaded(characters));
     } catch (e) {
       emit(CharacterError("Bağlantı hatası! Lütfen internetinizi kontrol edin."));
    }
});
  }
}
