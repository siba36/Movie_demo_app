import 'package:flutter/material.dart';
import 'package:movies_app/core/services/service_locator.dart';
import 'package:movies_app/movies/presentation/screens/movies_screen.dart';
import 'core/util/app_string.dart';

void main() {
  ServiceLocator().init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData.dark(),
      home: const MoviesScreen(),
    );
  }
}
