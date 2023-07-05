import 'package:flutter/material.dart';

import '../factory_method.dart';

class FactoryMethodPage extends StatelessWidget {
  const FactoryMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Factory Method Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimalScreen(),
    );
  }
}

class AnimalScreen extends StatelessWidget {
  final AnimalCreator creator = DogCreator(); 

  @override
  Widget build(BuildContext context) {
    final animal = creator.createAnimal();
    final sound = animal.speak();

    return Scaffold(
      appBar: AppBar(
        title: Text('Animal Screen'),
      ),
      body: Center(
        child: Text(
          sound,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}