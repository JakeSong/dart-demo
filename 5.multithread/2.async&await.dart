import 'dart:io';

/// When you call an async function, it immediately returns a Future;
getFileContent() async {
  var file = File('testfile.txt');
  return file.readAsStringSync();
}

void printFileContent() async {
  /// An "await" expression does not let synchronous code wait for asynchronous code
  /// 
  /// Dart currently does not recognize 'await' unless it is used inside an async method
  /// Only asynchronous code can wait, because the act of waiting is what means that
  /// it's not synchronous.
  var value = await getFileContent();
  print(value);
}

main(List<String> args) {
  // return future 
  print('getFileContent return a ${getFileContent().runtimeType}');
  printFileContent();
}
