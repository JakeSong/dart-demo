/* The Dart language has special support for the following types:
   * Null (only value is null)
   * bool (true and false)
   * num (int and double)
   * String
   * lists (also known as arrays)
   * maps
   * runes (for expressing Unicode characters in a string)
   * symbols
   */
void main() {
  // everything is object
  // literals
  print('null.runtimeType = ${null.runtimeType}');
  print('true.runtimeType = ${true.runtimeType}');
  print(
      '1000000000000000000.runtimeType = ${1000000000000000000.runtimeType}'); //64 bits
  print('5.12e10000.runtimeType = ${5.12e10000.runtimeType}'); //64 bits
  print("'str'.runtimeType = ${'str'.runtimeType}");
  // list (array) literal
  print('---------------list literal---------------');
  print('[].runtimeType = ${[].runtimeType}');
  var list = [];
  list.add('a');
  list.add('b');
  list.add('c');
  list[0] = 1;
  print('list = $list, list.runtimeType = ${list.runtimeType}');

  //map literal
  print('---------------map literal---------------');
  print('{}.runtimeType = ${{}.runtimeType}');
  var map = {};
  map['a'] = 1;
  map['b'] = 2;
  map['c'] = 3;
  map[1] = '10';
  print(
      "map = $map, map['c'] = ${map['c']}, map.runtimeType = ${map.runtimeType}");

  print('---------------function literal---------------');
  // function literal and types
  var fun = (int value) => value + 1;
  print('fun.runtimeType = ${fun.runtimeType}');

  print('---------------default value---------------');
  //default value of all variables is null!
  int lineCount;
  // lineCount += 1; //error
  print('lineCount = $lineCount');
}
