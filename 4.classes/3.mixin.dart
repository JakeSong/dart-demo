/// Support for the mixin keyword was introduced in Dart 2.1. 
/// Code in earlier releases usually used abstract class instead.
///
abstract class Animal {
  String _name;
  Animal(this._name);

  void introduce(){
    print('I am ${_name}');
  }
}

abstract class Mammal extends Animal {
  Mammal(String name) : super(name);
}

abstract class Bird extends Animal {
  Bird(String name) : super(name);
}

abstract class Fish extends Animal {
  Fish(String name) : super(name);
}

// This class is intended to be used as a mixin, and should not be
// extended directly.
mixin Walker {
  var feetCount = 0;

  void walk() {
    print("I'm walking with ${feetCount} feet.");
  }
}

mixin Swimmer {
  var finsCount = 0;
  void swim() {
    print("I'm swimming with ${finsCount} fins.");
  }
}

mixin Flyer {
  var wingsCount = 0;
  void fly() {
    print("I'm flying with ${wingsCount} wings.");
  }
}

class Dolphin extends Mammal with Swimmer {
  Dolphin() : super('Dolphin');
}

class Bat extends Mammal with Walker, Flyer {
  Bat() : super('Bat');
}

class Cat extends Mammal with Walker {
  Cat() : super('Cat');
}

class Dove extends Bird with Walker, Flyer {
  Dove() : super('Dove');
}

class Duck extends Bird with Walker, Swimmer, Flyer {
  Duck() : super('Duck');
}

class Shark extends Fish with Swimmer {
  Shark() : super('Shark');
}

class FlyingFish extends Fish with Swimmer, Flyer {
  FlyingFish() : super('FlyingFish');
}

main(List<String> args) {
  var shark = Shark();
  shark.finsCount = 5;
  shark.introduce();
  shark.swim();
  print('shark is Fish = ${shark is Fish}');
  print('shark is Swimmer = ${shark is Swimmer}');

}