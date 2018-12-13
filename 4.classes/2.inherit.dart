import '1.basic.dart';

//abstact classes
abstract class Employee extends Person {
  String _jbTitle = 'employee';

  Employee(String name, bool male, String title) : super(name, male) {
    _jbTitle = title;
  }

  void work();
}

//implement the abstract class
class CEO extends Employee {
  CEO(String name, String lastName, bool male) : super(name, male, 'CEO') {
    age = 70;
  }

  @override
  void work() {
    print('I am ${name}, ${male}, I am CEO!');
  }
}

//No interface keyword
//Every class define a interface!!
class Worker {

  String name;

  int age;

  void work() => print('do my work!');
}

class CoderFarmer extends Employee implements Worker {

  CoderFarmer(String name, bool male, String title) : super(name, male, title);

  @override
  void work() {
    print('moving bricks');
  }

}


void main(List<String> args) {
  var ceo = CEO('Bill','Gates', true);
  print(ceo);
  ceo.work();
}

