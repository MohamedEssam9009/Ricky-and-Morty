import 'package:bloc_example/business_logic/cubit/characters_cubit.dart';
import 'package:bloc_example/constants/strings.dart';
import 'package:bloc_example/data/repository/characters_repository.dart';
import 'package:bloc_example/presentation/screens/characters_details_screen.dart';
import 'package:bloc_example/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/web_services/characters_web_services.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<CharactersCubit>(
            create: (context) => charactersCubit,
            child: const CharactersScreen(),
          ),
        );
      case charactersDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const CharactersDetailsScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}
