import 'dart:math';

extension MapIndex<T> on List<T> {
  List<R> mapIndex<R>(R Function(T, int i) callback) {
    List<R> result = [];
    for (int i = 0; i < this.length; i++) {
      R item = callback(this[i], i);
      result.add(item);
    }
    return result;
  }
}

extension Shuffle<T> on List<T> {
  List<T> shuffle() {
    var random = new Random();
    for (var i = length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);
      var temp = this[i];
      this[i] = this[n];
      this[n] = temp;
    }
    return this;
  }
}