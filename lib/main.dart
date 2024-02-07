import 'app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BlocExample(appRouter: AppRouter()));
}

class BlocExample extends StatelessWidget {
  const BlocExample({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Example',
      theme: ThemeData(useMaterial3: true),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
