import 'package:bloc_example/constants/strings.dart';
import 'package:bloc_example/presentation/screens/characters_details_screen.dart';
import 'package:bloc_example/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
      case charactersDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharactersDetailsScreen());

      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
