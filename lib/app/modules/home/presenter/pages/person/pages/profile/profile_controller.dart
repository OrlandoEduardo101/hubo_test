import 'package:hubo_test/app/modules/home/infra/models/profile_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'profile_controller.g.dart';

@Injectable()
class ProfileController = _ProfileControllerBase with _$ProfileController;

abstract class _ProfileControllerBase with Store {
  ProfileModel userProfile = ProfileModel(
      name: "Carla Akemi",
      responsibility: 'Desenvolvedora Flutter',
      urlImg: "assets/img/image2.jpg",
      bio: "Olá, Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis.",
      linkedin: 'linkedin',
      github: 'github',
      google: 'google',
      whats: 'whats');

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
