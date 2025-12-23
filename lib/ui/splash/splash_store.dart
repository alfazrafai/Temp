import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStore with _$SplashStore;

abstract class _SplashStore with Store {
  @observable
  bool navigate = false;

  @action
  Future<void> startSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    navigate = true;
  }
}
