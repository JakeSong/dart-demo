void main() {
  print('---------------var ---------------');
  //type inferrence
  var str = 'this is a string';
  // str = 123; //error
  print('str.runtimeType = ${str.runtimeType}');

  print('---------------dynamic---------------');
  // dynamic type is changable. 
  dynamic dyStr = 'abc';
  print('dyStr = "abc", dyStr.runtimeType = ${dyStr.runtimeType}');
  dyStr = 123;
  print('dyStr = 123, dyStr.runtimeType = ${dyStr.runtimeType}');
  // dynamic vs object 
  Object objStr = 'object variable';
  /// you will not get warnings by calling any method on a dynamic typed variable. 
  /// That will not be the case with a variable typed as Object
  print('dyStr.length() = ${dyStr.abc()}');
  
  //when you define a function , the return type is dynamic
  foo(value) => value + 1;
  bar(int value) => value + 1;
  print('foo.runtimeType = ${foo.runtimeType}, bar.runtimeType = ${bar.runtimeType}');

  print('---------------type inference in list---------------');
  var intList = [1,2,3];//inferred type
  print('intList = $intList, intList.runtimeType = ${intList.runtimeType}');
  var list = [];
  list.add('1');
  list.add(1);
  print('intList = $intList, intList.runtimeType = ${intList.runtimeType}');  
}
