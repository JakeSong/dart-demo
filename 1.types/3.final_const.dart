main(List<String> args) {
  /// final modifies *variables*.
  /// "final" means single-assignment: a final variable or field *must* have an initializer.
  /// Once assigned a value, a final variable's value cannot be changed.
  /// 
  final int i = 0;
  // i = 1; //error! can't be assigned again

  /// const modifies *values*, 
  /// make values compile-time constant.
  /// All literals (Null, String, int, double, num, bool, Map, List, Symbol) are capable of being const
  const user = const {'name': 'Joe'};
  // Static error: "Constant variables cannot be assigned a value".
  // user = {};
  // Runtime error: "Unsupported operation: Cannot modify unmodifiable Map".
  user['name'] = 'Jill';

  /// const objects 
  /// const instances are both immutable bindings 
  /// and enforced at a language level to be both deeply immutable — and also are canonicalized at compile-time 
  reuseTheObject();
}

class User {
  final String name;
  final List<String> cars;
  
  const User(this.name, {this.cars});
}


reuseTheObject() {
  var list = [];
  for (var i = 0; i < 100; i++) {
    var users = User(
        'Matan Lurey',
        cars: [
          'Truck',
          'Jeep',
          'GoKart',
        ],
      );
      list.add(users);
  }
  for (var i = 1; i < 100; i++) {
    assert(list[i-1] == list[i]);
  }
}