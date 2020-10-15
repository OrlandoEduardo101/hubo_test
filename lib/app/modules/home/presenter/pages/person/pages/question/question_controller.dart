import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'question_controller.g.dart';

@Injectable()
class QuestionController = _QuestionControllerBase with _$QuestionController;

abstract class _QuestionControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
