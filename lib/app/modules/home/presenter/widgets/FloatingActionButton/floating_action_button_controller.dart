import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'floating_action_button_controller.g.dart';

@Injectable()
class FloatingActionButtonController = _FloatingActionButtonControllerBase
    with _$FloatingActionButtonController;

abstract class _FloatingActionButtonControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
