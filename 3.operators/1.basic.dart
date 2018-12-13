main(List<String> args) {
  //is == instanceof
  var a = 10.01;
  print('a is Number = ${a is num}');

  //as == typecast 
  num b = a;
  print('(b as double).toString() = ${(b as double).toString()}');
  // print('(b as int).toString() = ${(b as int).toString() }');//error

  //conditional operators
  var isPublic = false;
  var visibility = isPublic ? 'public' : 'private';

  String playerName([String name]) => name ?? 'Guest';
  print('playerName() = ${playerName()}');
  print('playerName("dart") = ${playerName("dart")}');

}