import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'indicator_provider.g.dart';

@Riverpod(keepAlive: false)
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void setIndex(int index) {
    state = index;
  }
}
