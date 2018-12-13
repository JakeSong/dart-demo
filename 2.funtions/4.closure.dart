/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdderFunction(num addBy) {
  return (num i) => addBy + i;
}

void main() {
  // Create a function that adds 2.
  var add2 = makeAdderFunction(2);
  // Create a function that adds 4.
  var add4 = makeAdderFunction(4);

  print('add2 is Function:${add2 is Function},add2.runtimeType = ${add2.runtimeType} ,add2(3) = ${add2(3)}');
  print('add4 is Function:${add4 is Function},add4.runtimeType = ${add4.runtimeType}, add4(3)= ${add4(3)}');
}