import 'dart:convert';
import 'package:http/http.dart' as http;

main(List<String> args) {
  // HttpClient()
  //   .getUrl(Uri.parse('https://swapi.co/api/people/1')) // produces a request object
  //   .then((request) => request.close()) // sends the request
  //   .then((response) =>
  //     response.transform(Utf8Decoder()).listen(print)); // transforms and prints the response

  var client = new http.Client();
  client
      .get('https://swapi.co/api/people/1')
      .then((response) => response.body)
      .then((bodyStr) => JsonDecoder().convert(bodyStr))
      .then((data) => print(data['name']));
}
