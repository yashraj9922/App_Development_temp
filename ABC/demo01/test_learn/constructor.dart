class Person {
  String name;
  int age;
  // Person(this.name, this.age); --> this is a positional constructor
  Person({required this.name, required this.age}); // --> this is a named constructor

  void main(){
    // var p1 = Person('John', 30); --> this is a positional constructor call
    var p1 = Person(name: 'John', age: 30); // --> this is a named constructor call
  }
}