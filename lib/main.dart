import 'app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(BlocExample(appRouter: AppRouter()));
}

class BlocExample extends StatelessWidget {
  const BlocExample({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc Example',
        theme: ThemeData(useMaterial3: true),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
