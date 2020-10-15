// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_navigation_bar_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $BottomNavigationBarController = BindInject(
  (i) => BottomNavigationBarController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BottomNavigationBarController
    on _BottomNavigationBarControllerBase, Store {
  final _$indexAtom = Atom(name: '_BottomNavigationBarControllerBase.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  final _$_BottomNavigationBarControllerBaseActionController =
      ActionController(name: '_BottomNavigationBarControllerBase');

  @override
  int setIndex(int value) {
    final _$actionInfo = _$_BottomNavigationBarControllerBaseActionController
        .startAction(name: '_BottomNavigationBarControllerBase.setIndex');
    try {
      return super.setIndex(value);
    } finally {
      _$_BottomNavigationBarControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index}
    ''';
  }
}
