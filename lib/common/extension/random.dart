import 'dart:math';

final _random = Random();

extension RandomEx on List {
  int get _index => _random.nextInt(length);

  dynamic get randomElement => this[_index];
}
