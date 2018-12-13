/// To allow your Dart class to be called like a function, implement the call() method.
///
enum Operator { Add, Substract, Multiply, Divide }

class Caculator {
  num oprand1, oprand2;
  Operator operator;

  Caculator.add(this.oprand1, this.oprand2) {
    operator = Operator.Add;
  }

  Caculator.sub(this.oprand1, this.oprand2) {
    operator = Operator.Substract;
  }

  call() {
    switch (operator) {
      case Operator.Add:
        return oprand1 + oprand2;
      case Operator.Substract:
        return oprand1 - oprand2;
      case Operator.Multiply:
        return oprand1 * oprand2;
      case Operator.Divide:
        return oprand1 / oprand2;
    }
  }
}

main(List<String> args) {
  var caculator = Caculator.add(10, 12);
  print('caculator.call() = ${caculator.call()}');
  print('caculator() = ${caculator()}');
  // () is only the shorthand of call()
  foo.call('hello world');
}

void foo(var obj) {
  print('object is ${obj}');
}
