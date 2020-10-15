import 'package:hubo_test/app/modules/home/presenter/widgets/BottomNavigationBarWidget/bottom_navigation_bar_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final BottomNavigationBarController bottomNavigationBarController;


  _HomeControllerBase(this.bottomNavigationBarController);

}
