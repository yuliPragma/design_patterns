import 'animal_abstract.dart';

class CatModel implements Animal {
  CatModel({
    required this.name,
    required this.age,
    required this.color,
  });

  @override
  String name;

  @override
  int age;

  @override
  String color;

  @override
  String emitSound() => 'Emite el sonido Miauuuu';

  @override
  String getName() => 'El gato se llama $name';
}
