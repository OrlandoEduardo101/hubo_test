import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'bottom_navigation_bar_controller.g.dart';

@Injectable()
class BottomNavigationBarController = _BottomNavigationBarControllerBase
    with _$BottomNavigationBarController;

abstract class _BottomNavigationBarControllerBase with Store {
  @observable
  int index = 0;

  @action
  int setIndex(int value) => index = value;
}
