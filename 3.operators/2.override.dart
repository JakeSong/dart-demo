class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // Operator == and hashCode not shown. For details, see note below.
  // If you override ==, you should also override Object’s hashCode getter
  @override
  bool operator ==(Object obj) => obj is Vector &&  x == obj.x && y == obj.y;

  @override
  int hashCode() => x + y;
}

void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}

/// Overridable operators
/// +	  –   *   /   % 
/// <   <=  >   >=  ==
/// &   |   ^   ~   <<  >>
// []   []=   ~/