// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies

mixin _$Account on _Account, Store {
  Computed<dynamic> _$full_nameComputed;

  @override
  dynamic get full_name =>
      (_$full_nameComputed ??= Computed<dynamic>(() => super.full_name)).value;

  final _$first_nameAtom = Atom(name: '_Account.first_name');

  @override
  String get first_name {
    _$first_nameAtom.reportObserved();
    return super.first_name;
  }

  @override
  set first_name(String value) {
    _$first_nameAtom.context
        .checkIfStateModificationsAreAllowed(_$first_nameAtom);
    super.first_name = value;
    _$first_nameAtom.reportChanged();
  }

  final _$last_nameAtom = Atom(name: '_Account.last_name');

  @override
  String get last_name {
    _$last_nameAtom.reportObserved();
    return super.last_name;
  }

  @override
  set last_name(String value) {
    _$last_nameAtom.context
        .checkIfStateModificationsAreAllowed(_$last_nameAtom);
    super.last_name = value;
    _$last_nameAtom.reportChanged();
  }

  final _$_AccountActionController = ActionController(name: '_Account');

  @override
  void update_name(String first_name, String last_name) {
    final _$actionInfo = _$_AccountActionController.startAction();
    try {
      return super.update_name(first_name, last_name);
    } finally {
      _$_AccountActionController.endAction(_$actionInfo);
    }
  }
}
