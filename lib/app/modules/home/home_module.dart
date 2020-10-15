import 'presenter/pages/person/pages/profile/profile_controller.dart';
import 'presenter/pages/person/pages/subscribe/subscribe_controller.dart';

import 'presenter/pages/creation/pages/cards/cards_controller.dart';
import 'presenter/pages/creation/pages/new/new_controller.dart';
import 'presenter/pages/creation/pages/new/widgets/slider_menu/slider_menu_controller.dart';
import 'presenter/pages/person/pages/question/question_controller.dart';
import 'presenter/widgets/BottomNavigationBarWidget/bottom_navigation_bar_controller.dart';
import 'presenter/widgets/FloatingActionButton/floating_action_button_controller.dart';
import 'presenter/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $SubscribeController,
        $QuestionController,
        $ProfileController,
        $SliderMenuController,
        $FloatingActionButtonController,
        $BottomNavigationBarController,
        $CardsController,
        $NewController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
