import 'dart:math';

class Point {
  //static variables are shared among instances.
  static Point origin = Point(0, 0);

  num x, y;
  Point(this.x, this.y);
  
  //static methods are Class Methods.
  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  print(distance);
}