import 'package:design_patterns/creational_design_patterns/prototype/models/person_model.dart';
import 'package:flutter/material.dart';

class PrototypePage extends StatelessWidget {
  const PrototypePage({super.key});

  @override
  Widget build(BuildContext context) {
    PersonModel person = const PersonModel(
      name: 'Bruno',
      lastName: 'Hernández',
      age: 23,
      country: 'Ecuador',
    );
    PersonModel personClone = person.clone();
    return Scaffold(
      appBar: AppBar(title: const Text('Prototype')),
      backgroundColor: Colors.blueGrey[50],
      body: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(15.0),
        height: 250.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(2, 2),
          )
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Persona Base:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Nombre: ${person.name}'),
            Text('Apellido: ${person.lastName}'),
            Text('Edad: ${person.age}'),
            Text('País: ${person.country}'),
            const Divider(),
            const Text(
              'Persona Clonada:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Nombre: ${personClone.name}'),
            Text('Apellido: ${personClone.lastName}'),
            Text('Edad: ${personClone.age}'),
            Text('País: ${personClone.country}'),
          ],
        ),
      ),
    );
  }
}
