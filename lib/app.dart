import 'package:design_patterns/creational_design_patterns/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return MaterialApp(
      title: 'Creational Design Patterns',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: theme.copyWith(
        dividerTheme: theme.dividerTheme.copyWith(color: Colors.black),
        textTheme: theme.textTheme.copyWith(
          bodyMedium: theme.textTheme.bodyMedium!.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}