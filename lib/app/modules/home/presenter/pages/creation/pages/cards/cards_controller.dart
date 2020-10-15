import 'package:hubo_test/app/modules/home/infra/models/item_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cards_controller.g.dart';

@Injectable()
class CardsController = _CardsControllerBase with _$CardsController;

abstract class _CardsControllerBase with Store {
  List<ItemModel> itemList = [
    ItemModel('Card de pergunta', 'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png', true),
    ItemModel('Link de Vendas', 'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png', true),
    ItemModel('Enquete de Preferência', 'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png', true),
    ItemModel('Enquete de Preferência', 'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png', false),
    ItemModel('Enquete de Preferência', 'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png', false),
    ItemModel('Enquete de Preferência', 'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png', false),
    ItemModel('Enquete de Preferência', 'https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png', false),
  ];

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
