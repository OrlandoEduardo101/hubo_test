import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'subscribe_controller.g.dart';

@Injectable()
class SubscribeController = _SubscribeControllerBase with _$SubscribeController;

abstract class _SubscribeControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
