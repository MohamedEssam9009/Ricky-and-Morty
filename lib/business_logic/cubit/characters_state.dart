// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_example/data/models/characters.dart';

abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  List<Character> characters;
  CharactersLoaded(this.characters);
}
