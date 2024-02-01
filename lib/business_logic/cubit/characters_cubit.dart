import 'package:bloc_example/business_logic/cubit/characters_state.dart';
import 'package:bloc_example/data/models/characters.dart';
import 'package:bloc_example/data/repository/characters_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  late List<Character> characters;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());
  List<Character> getAllCharacters() {
   charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}
