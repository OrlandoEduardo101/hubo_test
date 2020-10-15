// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floating_action_button_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $FloatingActionButtonController = BindInject(
  (i) => FloatingActionButtonController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FloatingActionButtonController
    on _FloatingActionButtonControllerBase, Store {
  final _$valueAtom = Atom(name: '_FloatingActionButtonControllerBase.value');

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

  final _$_FloatingActionButtonControllerBaseActionController =
      ActionController(name: '_FloatingActionButtonControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_FloatingActionButtonControllerBaseActionController
        .startAction(name: '_FloatingActionButtonControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_FloatingActionButtonControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
