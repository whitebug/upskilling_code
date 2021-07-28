abstract class BaseClassA {
  void printSomething() {
    print('printing inside a method of abstract class');
  }
}

abstract class BaseClassB {}

mixin A {
  void printSomething() {
    print('printing inside a method of mixing');
  }
}

mixin B on BaseClassB {}

// Yeah, this is legal
class ConcreteClass extends BaseClassB with A, B implements BaseClassA {
  void printSomething() {
    super.printSomething();
    print('printing inside a method of concrete class');
  }
}

void main() {
  final concreteClass = ConcreteClass();
  concreteClass.printSomething();
}
