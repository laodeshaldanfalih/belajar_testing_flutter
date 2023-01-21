// triangle_app.dart
detectTriangle(num sideA, num sideB, num sideC) {
  final sides = [sideA, sideB, sideC];
  sides.sort();

  sides.forEach((side) {
    if (side < 1) {
      throw Exception();
    }
  });

  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception('Inequal Triangle');
  }

  if (sideA == sideB && sideA == sideC) {
    return "Segitiga Sama Sisi";
  }

  if (sideA == sideB || sideA == sideC || sideB == sideC) {
    return "Segitiga Sama Kaki";
  }

  return "Segitiga Sembarang";
}
