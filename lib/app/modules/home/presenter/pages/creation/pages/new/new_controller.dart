import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'new_controller.g.dart';

@Injectable()
class NewController = _NewControllerBase with _$NewController;

abstract class _NewControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
