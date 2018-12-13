import 'dart:async';

/// A future is a Future<T> object, which represents an asynchronous 
/// operation that produces a result of type T.
/// 
/// When a function that returns a future is invoked, two things happen:
/// 1.The function queues up work to be done and returns an uncompleted Future object.
/// 2.Later, when the operation is finished, the Future object completes with a value or with an error.
Future<int> getPopulationOfChina() {
  return new Future(() {
    int population = 0;
    for (int i = 0; i < 1400000000; i++) {
      population += 1;
    }
    return population;
  });
}

main(List<String> args) {

  getPopulationOfChina()
      .then((value) => print('China has population of ${value}'))
      .catchError((_) => print('Err!'))
      .whenComplete(() => print('done.'));

  getErrorFuture()
      .catchError((err) => print('Err ${err}'))
      .whenComplete(() => print('done.'));

  print('I am in main');
}

/// Can return error when something go wrong.
Future getErrorFuture() {
  return Future.error('this is an error.');
}