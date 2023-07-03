import 'package:flutter/material.dart';
import '../models/cat_model.dart';
import '../models/cow_model.dart';
import '../models/dog_model.dart';

class AbstractFactoryPage extends StatelessWidget {
  const AbstractFactoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    DogModel dog = DogModel(name: 'Neron', age: 4, color: 'blanco', country: 'Estados Unidos');
    CatModel cat = CatModel(name: 'Salem', age: 6, color: 'café');
    CowModel cow = CowModel(name: 'Dolly', age: 10, color: 'manchas de café');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abstract Factory'),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(15.0),
        height: 250.0,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
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
            Text(dog.getName()),
            Text(dog.emitSound()),
            Text(dog.getAge()),
            Text('Proviene de ${dog.country}'),
            const Divider(),
            Text(cat.getName()),
            Text(cat.emitSound()),
            const Divider(),
            Text(cow.getName()),
            Text(cow.emitSound()),
          ],
        ),
      ),
    );
  }
}
