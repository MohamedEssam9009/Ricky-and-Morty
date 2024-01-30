import 'package:bloc_example/business_logic/cubit/characters_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit() : super(CharactersInitial());
}
