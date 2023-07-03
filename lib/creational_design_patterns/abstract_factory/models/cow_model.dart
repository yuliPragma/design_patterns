import 'animal_abstract.dart';

class CowModel implements Animal {
  CowModel({
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
  String emitSound() => 'Emite el sonido Muuuu';

  @override
  String getName() => 'La vaca se llama $name';
}
