/// Functions are FIRST-CLASS-CITIZENS in Dart.

//define a function
void printItem(item) {
  print(item);
}

//in this way
var printItem2 = (item) {
  print(item);
};

// short hand way
var printItem3 = (item) => print(item);

void main(List<String> args) {
  print('printItem is Function: ${printItem is Function}');
  print('printItem2 is Function: ${printItem2 is Function}');
  print('printItem3 is Function: ${printItem3 is Function}');
  print('printItem.runtimeType: ${printItem.runtimeType}');

  // use of function.
  var list = [1, 2, 3, 4];
  list.forEach(printItem);

  //declear anonymous function (lamda or closure)
  var map = {1: 'a', 2: 'b', 3: 'c'};
  map.forEach((key, value) {
    print('$key = $value');
  });

  //All functions return a value expect those return void.
  //If no return value is specified, the statement return null;
  var value = printItem2(123);
  print('value = ${value}');

  doTwice(print, 'hellow');
  var v = doTwice((n) => n*n, 10);
  print('invoke n*n twice on 10 is ${v}');
}

// invoke any function twice.
doTwice(func(value), value) {
  value = func(value);
  return func(value);
}
