abstract class Animal {
  Animal(this.name, this.age, this.color);
  String name;
  int age;
  String color;

  String emitSound() => '';
  String getName() => '';
}
