//Dart is an object-oriented language with classes and mixin-based inheritance.

//Every object is an instance of a class, and all classes descend from Object.

//Mixin-based inheritance means that although every class (except for Object)
// has exactly one superclass, a class body can be reused in multiple class hierarchies.

class Person extends Object {
  //no public or private modifiers
  /*private*/ String _name;
  /*public*/ bool male = true;
  int _age = 30;
  String _phoneNum;

  // Person(String name, bool male) {
  //   this._name = name;
  //   this.male = male;
  // }
  // short version
  Person(this._name, this.male);

  // perfered version
  // Person({name,male,age,phoneNum}) {
  //   this._name = name;
  //   this.male = male;
  //   this._age = age;
  //   this._phoneNum = phoneNum;
  // }

  // No OVERLOAD Support!!!!
  // Named constructor
  Person.fromJson(String json) {
    if (json != null) {
      //parse json
    }
  }

  //getter and setter
  String get name => _name;
  set name(String name) {
    if (name != null) {
      _name = name;
    } else {
      _name = "无名氏";
    }
  }

  get gender => male ? '男' : '女';
  set gender(String value) => male = (value == '男');

  int get age => _age;
  void set age(int value) => _age = value;

  get phone => _phoneNum;
  set phone(String value) => _phoneNum = value;

  @override
  operator ==(Object object) => object is Person && object._name == _name;

  @override
  int get hashCode => _name.hashCode;

  @override
  String toString() {
    return 'Person {name:${_name}, gender:${gender}, age:${_age}, phone:${_phoneNum}}';
  }
}

main(List<String> args) {
  //Cascade notation
  var alice = Person('Alice', false)
    ..gender = '女'
    ..age = 30
    ..phone = '17811110000';
  print('alice is ${alice}');
  // Conditional member access
  var bob = new Person('Bob', true);
  print('bob.name = ${bob.name}');
  print('bob?.name = ${bob?.name}');
  bob = null;
  print('bob.name = ${bob.name}');
  print('bob?.name = ${bob?.name}');
}
