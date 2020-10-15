import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'slider_menu_controller.g.dart';

@Injectable()
class SliderMenuController = _SliderMenuControllerBase
    with _$SliderMenuController;

abstract class _SliderMenuControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
