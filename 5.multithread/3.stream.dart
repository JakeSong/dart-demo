/// A stream is a sequence of asynchronous events.
/// It is like an asynchronous Iterable—where, instead of getting the next event when you ask for it,
/// the stream tells you that there is an event when it is ready.
/// LIKE JAVA Stream OR RxJava

// create stream using 
Stream<int> timer(count) async* {
  int cur = 0;
  while (true) {
    await Future.delayed(Duration(seconds: 1));
    if (cur >= count) {
      break;
    }
    cur++;
    yield cur;
  }
}

getAllDataFromStream(Stream s, void onData(data)) async {
  await for (var data in s) {
    onData(data);
  }
}

main(List<String> args) {
  // getAllDataFromStream(timer(10), (value) => print(value));
  // timer(10)
  //     .skip(3)
  //     .take(5)
  //     .map((value) => value * value)
  //     .listen((value) => print(value), onDone: () => print('done'));
  singleSubscription();
}

/// Dart features two different flavors of Streams:
/// 1.single-subscription streams : are stable with guaranteed properties (like TCP)
/// 2.broadcast streams : can lose events and listeners don’t have a tight connection to the source (like UDP)
///
/// 	                    |Single subscription	| Broadcast
///   Number of listeners	| 1	                  | ∞
///  Can lose events	    | No	                | Yes
///Well-defined life cycle|	Yes	                | No
///

singleSubscription() async {
  var counter = timer(10);
  var firstNum = await counter.first;
  print('firstNum is $firstNum');
  // error :single-subscription streams can't be subscripe multitimes
  counter.listen((value) => print(value));
      
}