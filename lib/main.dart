import 'package:flutter/material.dart';
import 'package:recipe_app/screens/cover_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Gilroy',
      ),
      darkTheme: ThemeData(
        fontFamily: 'Gilroy',
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
        ),
      ),
      // themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      home: const CoverPage(),
    );
  }
}
