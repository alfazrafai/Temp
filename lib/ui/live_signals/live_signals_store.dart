import 'package:mobx/mobx.dart';

part 'live_signals_store.g.dart';

class LiveSignalsStore = _LiveSignalsStore with _$LiveSignalsStore;

abstract class _LiveSignalsStore with Store {
  @observable
  int selectedFilter = 0;

  @action
  void changeFilter(int index) {
    selectedFilter = index;
  }
}
