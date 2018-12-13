/// Functions are FIRST-CLASS-CITIZENS in Dart.
/// 
// Demo for optional parameters
void sayOrigion(String from, String msg, 
String device, String mood) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  print(result);
}

//Positional optional parameters
void say(String from, String msg , [String device = 'smoke', String mood = 'soso']) {
  sayOrigion(from, msg, device, mood);
}

//Named optional parameters
void say2(String from, String msg, {String device = 'smoke', String mood = 'soso'}) {
  sayOrigion(from, msg, device, mood);
}

//All named optional parameters, return type is optional.
say3({String from, String msg ,String device, String mood}) {
  sayOrigion(from, msg, device, mood);
}

// the type declearation of args is optional.
say4 (from ,msg) {
  sayOrigion(from, msg, 'carrier pigeon', 'sad');
}

void main(List<String> args) {
  //Positional optional parameters
  say('dart', 'hi');
  say('dart', 'hi', 'android');
  //Named optional parameters
  say2('dart', 'hello');
  say2('dart', 'hello', mood: 'happy');
  //ALL Named optional parameters
  say3(from:'dart', msg: 'helloworld', mood: 'crazy');

  say4('dart', 'dud');
}