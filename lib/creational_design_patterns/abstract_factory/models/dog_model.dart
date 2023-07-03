import 'package:design_patterns/creational_design_patterns/abstract_factory/models/animal_abstract.dart';

class DogModel implements Animal {
  DogModel({
    required this.name,
    required this.age,
    required this.color,
    required this.country,
  });

  @override
  String name;

  @override
  int age;

  @override
  String color;

  String country;

  @override
  String emitSound() => 'Emite el sonido Gauugauu';

  @override
  String getName() => 'El perro se llama $name';

  String getAge() => 'Tiene $age años';
}
