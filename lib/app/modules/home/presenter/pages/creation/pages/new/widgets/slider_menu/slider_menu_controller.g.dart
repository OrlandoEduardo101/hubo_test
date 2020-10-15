// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_menu_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SliderMenuController = BindInject(
  (i) => SliderMenuController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SliderMenuController on _SliderMenuControllerBase, Store {
  final _$valueAtom = Atom(name: '_SliderMenuControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_SliderMenuControllerBaseActionController =
      ActionController(name: '_SliderMenuControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_SliderMenuControllerBaseActionController
        .startAction(name: '_SliderMenuControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_SliderMenuControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
