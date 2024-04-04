// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a base class using inheritance
class Mammal {
  String name;
  
  Mammal(this.name);
  
  void eat() {
    print('$name is eating.');
  }
}

// Implement an interface in a class
class Dog extends Mammal implements Animal {
  Dog(String name) : super(name);
  
  @override
  void makeSound() {
    print('Woof!');
  }
  
  // Override a method inherited from a parent class
  @override
  void eat() {
    super.eat();
    print('Dog food tastes good!');
  }
  
  // Method to initialize an instance with data from a file
  factory Dog.fromFile(String fileName) {
    // Read data from file and initialize Dog instance
    return Dog('Fido');
  }
}

void main() {
  // Initialize Dog instance using data from a file
  var dog = Dog.fromFile('dog_data.txt');
  
  // Call overridden method
  dog.eat();
  
  // Demonstrate the use of a loop
  for (var i = 0; i < 3; i++) {
    print('Loop iteration: $i');
  }
}
