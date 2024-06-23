import 'package:character_app/data/models/characters.dart';

abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  List<Character> characters;
  CharactersLoaded(this.characters);
}
