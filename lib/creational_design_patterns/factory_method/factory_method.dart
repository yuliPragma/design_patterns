// Product abstract class
abstract class Animal {
  String speak();
}

// Concrete Products
class Cat implements Animal {
  @override
  String speak() {
    return "Meow!";
  }
}

class Dog implements Animal {
  @override
  String speak() {
    return "Woof!";
  }
}

// Creator abstract class
abstract class AnimalCreator {
  Animal createAnimal();
}

// Concrete Creators
class CatCreator implements AnimalCreator {
  @override
  Animal createAnimal() {
    return Cat();
  }
}

class DogCreator implements AnimalCreator {
  @override
  Animal createAnimal() {
    return Dog();
  }
}