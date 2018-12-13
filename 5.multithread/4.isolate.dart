import 'dart:isolate';

/*
 * All Dart code runs in an isolate, and code can access classes and values
 * only from the same isolate.
 * Different isolates can communicate by sending values through ports 
 * (see [ReceivePort], [SendPort]).
 */
main() async {
  //创建自己的ReceivePort，用来接收其他isolate发送的消息。
  var mainReceivePort = new ReceivePort();
  // 创建一个新的Isolate，并把自己的sendPort对象传递给它。
  await Isolate.spawn(echoMain, mainReceivePort.sendPort);
  //监听ReceivePort上的数据。
  await for (var data in mainReceivePort){
    if (data is SendPort) {// 'echo'发送的第一个message，是它的SendPort
      SendPort mySendPort = data;
      //发送几个消息给echo
      var msgs = ['foo', 'bar', 'hello'];
      for (var msg in msgs) {
        mySendPort.send(msg);
        print('sending msg $msg to isolate.');
      }
    } else {
      print('$data');
    }
  };
}

//echo isolate的入口函数
echoMain(SendPort mainSendPort) async {
  // 创建一个ReceivePort 以接收消息
  var myReceivePort = new ReceivePort();
  // 把它的sendPort发送给main isolate，以便main可以给它发送消息
  mainSendPort.send(myReceivePort.sendPort);
  // 监听消息
  await for (var msg in myReceivePort) {
    mainSendPort.send("echo:${msg}");
  }
}
